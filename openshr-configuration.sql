--
-- OpenSHR configuration for integration with OpenHIM
--

--
-- NIST2010 Identifier
--

INSERT IGNORE INTO patient_identifier_type (name, description, format, check_digit, creator, date_created, required, format_description, validator, location_behavior, retired, retired_by, date_retired, retire_reason, uuid, uniqueness_behavior)
VALUES ('ECID', "Code referencing a patient's record in the SEDISH Master Person Index (Enterprise Client ID)",NULL,'0','1','2017-05-25 11:43:24','0',NULL,NULL,NULL,'0',NULL,NULL,NULL,'f54ed6b9-f5b9-4fd5-a588-8f7561a78401',NULL);
--
-- OpenSHR Configuration
--

INSERT INTO global_property
VALUES ('openhie-client.endpoint.pdq','ohie-cr','Indicates the endpoint on which PDQ messages should be routed','2ee943c3-6567-4332-ba44-3fa5e5cb93a1',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('openhie-client.endpoint.pdq.port','3700','Indicates the port on which PDQ messages should be routed','167e2663-261a-4bce-b1ad-09ef4edc0494',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('openhie-client.endpoint.pix','ohie-cr','Indicates the endpoint on which PIX messages should be routed','cbb85ce5-c181-4962-9ce4-021b22734297',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('openhie-client.endpoint.pix.port','3600','Indicates the port on which PIX messages should be routed','2b889f3c-c807-4800-997d-62a14db36a8f',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('openhie-client.endpoint.xds.registry','http://openxds:8010/axis2/services/xdsregistryb','Indicates the endpoint on which XDS Registry messages should be routed','a5fe8065-ec77-4b84-959c-ad8c5ebb114e',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('openhie-client.endpoint.xds.repository','http://openxds:8010/openmrs-standalone/ms/xdsrepository','Indicates the port on which XDS Repository messages should be routed','10a67d53-504a-48ad-83e8-1180f3f799d7',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.homeCommunituyId','1.3.6.1.4.1.21367.2010.1.2.2045','The id of the community within which this SHR operates','cae07f64-2034-456b-b88b-bb706638e320',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.xdsrepository.uniqueId','1.3.6.1.4.1.21367.2010.1.2.1125','The id of this XDSb repository.','59852a1a-cf55-42c4-8dd9-73cfaa79aedf',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.xdsrepository.uniqueId','1.3.6.1.4.1.21367.2010.1.2.1125','The id of this XDSb repository.','59852a1a-cf55-42c4-8dd9-73cfaa79aedf',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.xdsregistry.url','http://openxds:8010/axis2/services/xdsregistryb','The url of the XDSb registry to use.','c92e9849-a677-4b86-b8be-5a0d2e470009',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.xdsregistry.url','http://openxds:8010/axis2/services/xdsregistryb','The url of the XDSb registry to use.','c92e9849-a677-4b86-b8be-5a0d2e470009',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('shr.id.ecidRoot','2.16.840.1.113883.4.56','Identifies the root of jurisdictional identifiers to use when creating/looking for patients','d4d5f714-5bd9-4548-b31b-e83d6ced2721',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('shr.id.root', '2.16.840.1.113883.4.56', 'Identifies the root which should be attached to all observations, orders, allergies, etc. in this SHR instance (used for detecting duplicates)', 'e7af7953-450f-4d7c-b709-5b65e0e3dadc', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('shr.id.epidRoot', '1.2.3.4.5.10', 'Identifies the root of jurisdictional identifiers to use when creating/looking for providers', '674b0639-4911-42cd-94b0-14660b8c4eb0', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('shr-cdahandler.id.format', '%2$s', 'Identifies the string representation of instance identifier from the CDA document. %1$s = Root (or domain) and %2$s = Extension (or identifier)', '97ae6d5c-f991-422e-bcfd-1133bcbbe864', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.local_patient_identifierTypeMap.iSantePlus ID', '05a29f94-c0ed-11e2-94be-8c13b969e334:2.25.71280592878078638113873461180761116318:PI', ' ', '593e4844-03be-48c9-bcc3-c734096d129d', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.local_patient_identifierTypeMap.ECID', 'f54ed6b9-f5b9-4fd5-a588-8f7561a78401:2.16.840.1.113883.4.56:NI', ' ', '822d6ca6-190b-46e8-a671-1c1837372e10', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.local_patient_identifierTypeMap.Code ST', 'd059f6d0-9e42-4760-8de1-8316b48bc5f1:2.25.276946543544871160225835991160192746993:PI', ' ', 'c41aaa47-04ac-45c4-9f44-cb16abf2a274', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.local_patient_identifierTypeMap.Code National', '9fb4533d-4fd5-4276-875b-2ab41597f5dd:2.25.212283553061960040061731875660599129565:PI', ' ', 'a50ebc7a-6f39-4028-8111-3b2a3338473d', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('xds-b-repository.local_patient_identifierTypeMap.Biometrics Reference Code', 'e26ca279-8f57-44a5-9ed8-8cc16e90e559:2.25.300969590489438061583573695579607328089:NI', ' ', '0b6cae9a-cd6b-483c-870f-5af94428ac0f', NULL, NULL, NULL, NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);

INSERT INTO global_property
VALUES ('layout.address.format','<org.openmrs.layout.web.address.AddressTemplate>
     <nameMappings class="properties">
       <property name="address2" value="Ri / Nimewo Kay"/>
       <property name="address1" value="Lokalite"/>
       <property name="country" value="Peyi"/>
       <property name="stateProvince" value="Depatman"/>
       <property name="cityVillage" value="Komin"/>
       <property name="countyDistrict" value="Seksyon Riral"/>
     </nameMappings>
     <sizeMappings class="properties">
       <property name="address2" value="40"/>
       <property name="address1" value="40"/>
       <property name="country" value="40"/>
       <property name="stateProvince" value="40"/>
       <property name="cityVillage" value="40"/>
       <property name="countyDistrict" value="40"/>
     </sizeMappings>
     <lineByLineFormat>
       <string>country</string>
       <string>stateProvince</string>
       <string>cityVillage</string>
       <string>countyDistrict</string>
       <string>address1</string>
       <string>address2</string>
     </lineByLineFormat>
</org.openmrs.layout.web.address.AddressTemplate>','XML description of address formats','c1f22426-86e1-491f-b47b-4cccc78864be',NULL,NULL,NULL,NULL)
ON DUPLICATE KEY UPDATE
  property_value=VALUES(property_value);
