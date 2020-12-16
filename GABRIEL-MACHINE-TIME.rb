################################################### TIME MACHINE ###############################################################


require "json"

file = open("payload.json") #receives the JSON file
payload = file.read #reads the file and puts into a string

parsed = JSON.parse(payload) #parses the string

#Parses the json file into the desired format
puts ("{\n \"id\": " +   parsed["id"].to_s +
      "\n \"recorded_at\": "+  "\""+ parsed["recorded_at"]+"\""+
      "\n \"status\": "+"\""+ parsed["status"]+"\""+
      "\n \"machine\": {"+
      "\n   \"id\": "+ parsed["machine_id"].to_s+
      "\n },"+
      "\n \"event\": {"+
      "\n   \"id\": "+ parsed["event"]["id"].to_s+
      "\n   \"event_name\": "+"\""+ parsed["event"]["event_name"]+"\""+
      "\n   \"event_date\": "+"\""+ parsed["event"]["event_date"]+"\""+
      "\n   \"contact_name\": "+"\""+ parsed["event"]["contact_name"]+"\""+
      "\n },"+
      "\n \"file\": {"+
      "\n   \"position\": "+ parsed["video_sequence"].to_s+
      "\n   \"compression\": "+"\""+ parsed["file_compression"]+"\""+
      "\n   \"type\": "+ "\""+parsed["file_type"]+"\""+
      "\n   \"name\": "+ "\""+parsed["file_name"]+"\""+
      "\n   \"length\": "+ "\""+parsed["video_length"].to_s+"\""+
      "\n},"+
      "\n\"machine\": {"+
      "\n   \"id\": "+ parsed["machine_id"].to_s+
      "\n }"+
      "\n}")

      File.open("exit.json","w") do |file| #saves the parse result into a file
        file.write("{\n \"id\": " +   parsed["id"].to_s +
              "\n \"recorded_at\": "+  "\""+ parsed["recorded_at"]+"\""+
              "\n \"status\": "+"\""+ parsed["status"]+"\""+
              "\n \"machine\": {"+
              "\n   \"id\": "+ parsed["machine_id"].to_s+
              "\n },"+
              "\n \"event\": {"+
              "\n   \"id\": "+ parsed["event"]["id"].to_s+
              "\n   \"event_name\": "+"\""+ parsed["event"]["event_name"]+"\""+
              "\n   \"event_date\": "+"\""+ parsed["event"]["event_date"]+"\""+
              "\n   \"contact_name\": "+"\""+ parsed["event"]["contact_name"]+"\""+
              "\n },"+
              "\n \"file\": {"+
              "\n   \"position\": "+ parsed["video_sequence"].to_s+
              "\n   \"compression\": "+"\""+ parsed["file_compression"]+"\""+
              "\n   \"type\": "+ "\""+parsed["file_type"]+"\""+
              "\n   \"name\": "+ "\""+parsed["file_name"]+"\""+
              "\n   \"length\": "+ "\""+parsed["video_length"].to_s+"\""+
              "\n },"+
              "\n\"machine\": {"+
              "\n   \"id\": "+ parsed["machine_id"].to_s+
              "\n }"+
              "\n}")
      end