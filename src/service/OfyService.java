package service;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;

import entity.Clients;


public class OfyService {
    static {
    	ObjectifyService.register(Clients.class);
       
    }

    public static Objectify ofy() {
        return ObjectifyService.ofy();
    }


    public static ObjectifyFactory factory() {
        return ObjectifyService.factory();
    }
}