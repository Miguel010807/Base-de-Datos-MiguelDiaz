SELECT * FROM crime_scene_report
WHERE date = 20180115 AND type LIKE "Murder" AND city LIKE "SQL City"
              
/*date	  type	                                description	                                                                           city
20180115 murder	Security footage shows that there were 2 witnesses. The first witness lives at the   SQL City  
                 last house on "Northwestern Dr". The second witness, named Annabel, lives
                 somewhere on "Franklin Ave".*/

SELECT * FROM person 
WHERE name LIKE "Annabel%" AND address_street_name LIKE "Franklin Ave" 

/* id	      name	      license_id	address_number	address_street_name	    ssn
  16371	  Annabel Miller    490173	          103	       Franklin Ave	     318771143*/


SELECT * FROM person 
WHERE address_street_name LIKE "Northwestern Dr"
ORDER BY address_number DESC LIMIT 1;

/*id	     name	      license_id	address_number	  address_street_name	    ssn
 14887	Morty Schapiro  	118009	        4919	        Northwestern Dr	     111564949*/

 SELECT * FROM interview i
INNER JOIN person p ON p.id = i.person_id
WHERE name LIKE "Annabel Miller" OR name LIKE "Morty Schapiro"

/*person_id	                  transcript	                             id	           name	        license_id	   address_number	address_street_name	     ssn
    14887	    I heard a gunshot and then saw a man run out.           14887     Morty Schapiro      118009            4919          Northwestern Dr     111564949
                He had a "Get Fit Now Gym" bag. The membership
                number on the bag started with "48Z".
                Only gold members have those bags.
                The man got into a car with a plate that included
                "H42W".


 person_id	                  transcript	                 id	           name	         license_id	   address_number	address_street_name	     ssn
   16371               I saw the murder happen,            16371       Annabel Miller      490173	        103             Franklin Ave                                  
                   and I recognized the killer from 
                    my gym when I was working out 
                    last week on January the 9th.