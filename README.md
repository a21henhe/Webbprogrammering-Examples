# Webbprogramming-Example
This repo contains examples and the API used in the Webbprograming course.

- /Examples - Here you find code examples used in the course
- /SPA-templates - Here you find single-page-application (SPA) templates 
- /admin - Here you find tools to manipulate booking data
- /booking - Here you find the booking API that your webb applic
## booking/getcustomer_XML.php
### Description
<bookings>
  <booking 
      application='Hotell_Demo'
      customerID='Haakon'
      resourceID='1008'
      name='Karl Hotel and Resort'
The booking/getresources_XML.php performs a search using a set of search terms. If none is given, that search term is ignored. The terms name, location and company use a logical or if more than one term is given. The full text search works in isolation from the other terms.
### Parameters
type **REQUIRED** Application type, in the example Hotel_Demo\
name _OPTIONAL_ Name of the resource\
company _OPTIONAL_ Company that used the resource\
location _OPTIONAL_ Location of the resource\
fulltext _OPTIONAL_ Tries to find a match from name, company or location\

### Return data
~~~ xml
<resources>
  <resource 
      id='1001'
      name='Pilkington Inn'
      company='Sunside Hotels'
      location='Manchester'
      size='15'
      cost='350'
      category='Hostel'
      auxdata='None'
  />
</resource>
~~~
## booking/getavailability_search_XML.php
### Description
Shows the availability information for all available dates for a given resourceID. There are 3 different ways to select resourse.
### Parameters
*Alt 1 - Search by resource id*\
type **REQUIRED** Application type\
resid **REQUIRED** The resource id\
*Alt 2 - Search by name,location,and company*\
type **REQUIRED** Application type\
name **REQUIRED** The resource name\
location **REQUIRED** The resource location\
company **REQUIRED** The resource companty\
*Alt 3 - Search with one search term for name,location, and company*\
type **REQUIRED** Application type\
fulltext **REQUIRED** Full text search much like for resource search, matches any search term.
### Return data
~~~ xml
<avail>
  <availability 
      resourceID='1008'
      name='The Laszlo Plaza'
      location='Athens'
      company='Laszlo Inc'
      size='96'
      cost='110'
      category='1'
      date='2001-01-01'
      dateto='2001-01-02'
      bookingcount='0'
      bookingcost='28.99'
      bookingclass='1'
      remaining='96'
  />
  ...
</avail>
~~~
## booking/makeresource_XML.php
### Description
Makes a new resource for the cases when we need the application to create new resources e.g. peer-to-peer hotels.
### Parameters
ID **REQUIRED** ID of the reresource\
name **REQUIRED** Name of the resource\
type **REQUIRED** Application type in the example Hotel_Demo\
company **REQUIRED** Company of the resource\
location **REQUIRED** Location of the resource\
category **REQUIRED** Category of the resource\
cost **REQUIRED** Cost of the resource\
auxdata _OPTIONAL_ Auxillary information about resource\
### Return data
~~~ xml
<created status="OK"/>
~~~
## booking/deletebooking_XML.php
### Description
Deletes a booking, for the cases that a user wants to cancel a booking of a resource.
### Parameters
ID **REQUIRED** ID of the reresource\
date **REQUIRED** Date of Booking\
customerID **REQUIRED** ID of Customer\
### Return data
~~~ xml
<deleted status="OK"/>
~~~
