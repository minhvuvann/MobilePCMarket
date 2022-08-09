package com.astore.services.implement;
import java.io.IOException;

import com.astore.model.FB_ID;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.restfb.DefaultFacebookClient;
import com.restfb.FacebookClient;
import com.restfb.Version;
import com.restfb.types.User;
public class RestFBServices {
    public static String getToken(final String code) throws ClientProtocolException, IOException {
        String link = String.format(FB_ID.FACEBOOK_LINK_GET_TOKEN, FB_ID.FACEBOOK_APP_ID, FB_ID.FACEBOOK_APP_SECRET, FB_ID.FACEBOOK_REDIRECT_URL, code);
        String response = Request.Get(link).execute().returnContent().asString();
        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
        return accessToken;
    }
    public static User getUserInfo(String accessToken) {
        FacebookClient facebookClient = new DefaultFacebookClient(accessToken, FB_ID.FACEBOOK_APP_SECRET, Version.LATEST);
        return facebookClient.fetchObject("me", User.class);
    }
}
