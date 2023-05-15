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
