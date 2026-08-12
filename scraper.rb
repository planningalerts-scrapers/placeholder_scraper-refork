#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
Bundler.require

require "date"
require "scraperwiki"

puts "This is a PLACEHOLDER (No real records are created, only one placeholder)"
puts "Update the PlanningAlerts entry when a real scraper has been created"

record = {
  "council_reference" => "",
  "address" => "",
  "description" => "",
  "info_url" => "",
  "date_scraped" => Date.today.to_s,
  "authority_label" => "place_holder",
}

puts "Saving #{record['authority_label']} empty record"
ScraperWiki.save_sqlite(%w[authority_label council_reference], record)
