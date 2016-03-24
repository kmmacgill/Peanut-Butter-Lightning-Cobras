/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author justin
 */
public class GetCommits {
    
    /**
     * Get the list of all the user's repositories
     * @param username The GitHub username
     * @return 
     */
    private static List<String> getList(String username) {
        
        HttpURLConnection urlConnection = null;
        BufferedReader reader = null;

        // Will contain the raw JSON response as a string.
        String jsonStr = null;

        try {
            // the url
            String baseUrl = "https://api.github.com/users/" + username + "/repos";
            URL url = new URL(baseUrl);
            
            // Create the request to GitHub, and open the connection
            urlConnection = (HttpURLConnection) url.openConnection();
            urlConnection.setRequestMethod("GET");
            urlConnection.connect();
            
            // Read the input stream into a String
            InputStream inputStream = urlConnection.getInputStream();
            StringBuilder buffer = new StringBuilder();
            if (inputStream == null) {
                // Nothing to do.
                return null;
            }
            reader = new BufferedReader(new InputStreamReader(inputStream));

            String line;
            while ((line = reader.readLine()) != null) {
                buffer.append(line);
            }

            if (buffer.length() == 0) {
                // Stream was empty.  No point in parsing.
                return null;
            }
            jsonStr = buffer.toString();
            
        } catch (MalformedURLException ex) {
            Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            if (reader != null) {
                try {
                    reader.close();
                } catch (final IOException ex) {
                    Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        
        if (jsonStr != null) {
            JSONArray array = new JSONArray(jsonStr);
        
            List<String> list = new ArrayList<>();
        
            for (int i = 0; i < array.length(); i++) {
                list.add(array.getJSONObject(i).getString("name"));
            }
        
            return list;
        }
        
        return null;
    }
    
    /**
     * Get the total number of commits made by a user since the last refresh
     * @param username The user's GitHub username
     * @param lastRefresh The last week that it was refreshed
     * @return The number of commits
     */
    public static int getAllCommits(String username, long lastRefresh) {
        int total = 0;
        
        List<String> list = getList(username);
        
        if (list != null) {
            for (String s : list) {
                total += getRepoCommits(username, s, lastRefresh);
            }
            return total;
        }
        
        return total;
    }
    
    /**
     * Get the number of commits given a username and a repo
     * @param username
     * @param repo
     * @return 
     */
    private static int getRepoCommits(String username, String repo, long lastRefresh) {
        
        // return this
        int total = 0;
        
        HttpURLConnection urlConnection = null;
        BufferedReader reader = null;

        // Will contain the raw JSON response as a string.
        String jsonStr = null;

        try {
            // the url
            String baseUrl = "https://api.github.com/repos/" + username + "/" + repo + "/stats/commit_activity";
            URL url = new URL(baseUrl);
            
            // Create the request to GitHub, and open the connection
            urlConnection = (HttpURLConnection) url.openConnection();
            urlConnection.setRequestMethod("GET");
            urlConnection.connect();
            
            // Read the input stream into a String
            InputStream inputStream = urlConnection.getInputStream();
            StringBuilder buffer = new StringBuilder();
            if (inputStream == null) {
                // Nothing to do.
                return total;
            }
            reader = new BufferedReader(new InputStreamReader(inputStream));

            String line;
            while ((line = reader.readLine()) != null) {
                buffer.append(line);
            }

            if (buffer.length() == 0) {
                // Stream was empty.  No point in parsing.
                return total;
            }
            jsonStr = buffer.toString();
            
        } catch (MalformedURLException ex) {
            Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (urlConnection != null) {
                urlConnection.disconnect();
            }
            if (reader != null) {
                try {
                    reader.close();
                } catch (final IOException ex) {
                    Logger.getLogger(GetCommits.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        
        System.out.println(jsonStr);
        
        if (jsonStr != null && jsonStr.length() > 0) {
            if (!jsonStr.equals("{}")) {
                JSONArray array = new JSONArray(jsonStr);
        
                for (int i = 0; i < array.length(); i++) {
                    JSONObject obj = array.getJSONObject(i);
            
                    if (obj.getLong("week") > lastRefresh) {
                    total += obj.getInt("total");
                    }
                }
            }
        }
        
        return total;
    }
}
