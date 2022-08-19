//@ui5-bundle ui/booking/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"ui/booking/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("ui.booking.Component",{metadata:{manifest:"json"}})});
},
	"ui/booking/i18n/i18n.properties":'# This is the resource bundle for ui.booking\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Booking\n\n#YDES: Application description\nappDescription=A Fiori application.\n\nflpTitle=Booking\n\nflpSubtitle=\n',
	"ui/booking/manifest.json":'{"_version":"1.40.0","sap.app":{"id":"ui.booking","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.7.1","toolsId":"6bed3aea-cfd0-4795-9e6a-674001465629"},"dataSources":{"mainService":{"uri":"library/","type":"OData","settings":{"annotations":["annotation"],"localUri":"localService/metadata.xml","odataVersion":"4.0"}},"annotation":{"type":"ODataAnnotation","uri":"annotations/annotation.xml","settings":{"localUri":"annotations/annotation.xml"}}},"crossNavigation":{"inbounds":{"ui-booking-inbound":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"Booking","action":"manage","title":"{{flpTitle}}","subTitle":"{{flpSubtitle}}","icon":""}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.102.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"ui.booking.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"BookingList","target":"BookingList"},{"pattern":"Booking({key}):?query:","name":"BookingObjectPage","target":"BookingObjectPage"}],"targets":{"BookingList":{"type":"Component","id":"BookingList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Booking","variantManagement":"Page","navigation":{"Booking":{"detail":{"route":"BookingObjectPage"}}}}}},"BookingObjectPage":{"type":"Component","id":"BookingObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Booking"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"library_service"}}'
}});