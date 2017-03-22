package com.quickstart.services;

import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletOutputStream;

import com.quickstart.utils.Data;
import com.sun.tools.xjc.reader.xmlschema.bindinfo.BIConversion.Static;

import atg.apache.soap.providers.com.Log;
import atg.repository.MutableRepository;
import atg.repository.MutableRepositoryItem;
import atg.repository.Repository;
import atg.repository.RepositoryException;

public class GenerateItems {

	private Repository myRep;
	private Random random;
	private Set<MutableRepositoryItem> accidents;
	private List<MutableRepositoryItem> destinations;
	private Set<MutableRepositoryItem> vehicules;

	public GenerateItems() {
		this.random = new Random();
	}

	public Repository getMyRep() {
		return myRep;
	}

	public void setMyRep(Repository myRep) {
		this.myRep = myRep;
	}

	public Random getRandom() {
		return random;
	}

	public void setRandom(Random random) {
		this.random = random;
	}

	public Set<MutableRepositoryItem> getAccidents() {
		return accidents;
	}

	public void setAccidents(Set<MutableRepositoryItem> accidents) {
		this.accidents = accidents;
	}

	public List<MutableRepositoryItem> getDestinations() {
		return destinations;
	}

	public void setDestinations(MutableRepositoryItem itemUser) {
		this.destinations = (List<MutableRepositoryItem>) itemUser.getPropertyValue("destinations");
	}

	public Set<MutableRepositoryItem> getVehicules() {
		return vehicules;
	}

	public void setVehicules(Set<MutableRepositoryItem> vehicules) {
		this.vehicules = vehicules;
	}

	public boolean generateRandomItems() {

		int randomData;

		
			int randomUser = random.nextInt(10);

			for (int j = 0; j < randomUser + 1; j++) {
				randomData = random.nextInt(9);
				try {

				MutableRepositoryItem itemUser = ((MutableRepository) myRep).createItem("user");
				itemUser.setPropertyValue("login","malek1505");
				itemUser.setPropertyValue("password", "hesoyam1505");

				itemUser.setPropertyValue("firstName", Data.FISTNAME[randomData]);
				itemUser.setPropertyValue("lastName", Data.LASTNAME[randomData]);
				itemUser.setPropertyValue("email", Data.EMAIL[randomData]);

				itemUser.setPropertyValue("type", Data.TYPE_LICENSE[randomData]);
				itemUser.setPropertyValue("num", Data.NUM_LICENSE[randomData]);

			/*	setAccidents((Set<MutableRepositoryItem>) itemUser.getPropertyValue("accidents"));
				setDestinations(itemUser);
				setVehicules((Set<MutableRepositoryItem>) itemUser.getPropertyValue("vehicules"));

				// Map<String, MutableRepositoryItem> policeFines = (Map<String,
				// MutableRepositoryItem>) itemUser
				// .getPropertyValue("policefines");

				/*
				 * MutableRepositoryItem itemPoliceFine = ((MutableRepository)
				 * myRep).createItem("policefine");
				 * itemPoliceFine.setPropertyValue("value", "550DT");
				 * policeFines.put("key of malek"+randomUser+1,
				 * itemPoliceFine);
				 */

				itemUser.setPropertyValue("accidents", generateRandomAccidents());
				itemUser.setPropertyValue("destinations", generateRandomDestinations());
				itemUser.setPropertyValue("vehicules", generateRandomVehicules()); 

				// itemUser.setPropertyValue("policefines", policeFines);

				((MutableRepository) myRep).addItem(itemUser);

				} catch (RepositoryException e) {
					// TODO Auto-generated catch block
				//	logError("Error", e);
					
					return false;
				}
			}


		return true;
	}

	private Set<MutableRepositoryItem> generateRandomAccidents() throws RepositoryException {
		int randomDestination = random.nextInt(10);
		for (int i = 0; i < randomDestination + 1; i++) {
			int randomData = random.nextInt(9);
			MutableRepositoryItem itemAccident = ((MutableRepository) myRep).createItem("accident");
			itemAccident.setPropertyValue("dateAccident", Data.DATA_ACCIDENT[randomData]);
			itemAccident.setPropertyValue("description", Data.DESCRIPTION[randomData]);
			accidents.add(itemAccident);
		}
		return accidents;

	}

	private Set<MutableRepositoryItem> generateRandomVehicules() throws RepositoryException {
		int randomData = 0;
		int randomVehicule = random.nextInt(10);
		for (int i = 0; i < randomVehicule + 1; i++) {
			randomData = random.nextInt(9);
			MutableRepositoryItem itemVehicule = ((MutableRepository) myRep).createItem("vehicule");
			itemVehicule.setPropertyValue("mark", Data.MARK[randomData]);
			itemVehicule.setPropertyValue("mat", Data.MAT[randomData]);
			vehicules.add(itemVehicule);
		}
		return vehicules;

	}

	private List<MutableRepositoryItem> generateRandomDestinations() throws RepositoryException {
		int randomData = 0;
		int randomDestination = random.nextInt(10);
		for (int i = 0; i < randomDestination + 1; i++) {
			randomData = random.nextInt(9);
			MutableRepositoryItem itemDestination = ((MutableRepository) myRep).createItem("destination");
			itemDestination.setPropertyValue("destinationCity", Data.DESTINATION_CITY[randomData]);
			destinations.add(itemDestination);
		}
		return destinations;

	}

}
