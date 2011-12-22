package org.fogbeam.neddick

class SiteConfigEntryController {

	def scaffold = false;
	
	def index =
	{
		redirect(controller:"siteConfigEntry", action:"list");
	}

	def list =
	{
		List<SiteConfigEntry> allEntries = SiteConfigEntry.findAll();
		[allEntries:allEntries];	
	}

	def edit =
	{
		SiteConfigEntry theEntry = SiteConfigEntry.findById( params.id );
		
		[ theEntry: theEntry ];	
	}
	
	def create = 
	{
		
		[];	
	}
	
	def save =
	{
		SiteConfigEntry theEntry = new SiteConfigEntry();
		theEntry.name = params.entryName;
		theEntry.value = params.entryValue;
		
		if( !theEntry.save())
		{
			flash.message = "Failed to save entry!";
			theEntry.errors.allErrors.each { println it };
		}
		
		redirect( controller:"siteConfigEntry", action:"list" );
	}
			
	def update =
	{
		println params;
		
		SiteConfigEntry theEntry = SiteConfigEntry.findById( params.entryId );
		theEntry.name = params.entryName;
		theEntry.value = params.entryValue;
		
		if( !theEntry.save())
		{
			flash.message = "Failed to save entry!";	
			theEntry.errors.allErrors.each { println it };
		}

		redirect( controller:"siteConfigEntry", action:"list" );	
	}
	
	def delete =
	{
		SiteConfigEntry theEntry = SiteConfigEntry.findById( params.entryId );
		theEntry.delete();
		
		redirect( controller:"siteConfigEntry", action:"list" );
	}
	
}
