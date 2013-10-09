xml.instruct!
xml.conference do
    xml.name @conference.name

    xml.days do
            @conference.days.each do |day|
                xml.day(day.displayName, :dayid => day.id)
            end
    end

    xml.sessions do
      @conference.sessions.each do |session|
        @grouped = false
            @conference.groups.each do |group|
                group.groups_group.each do |grouped|
                  if (grouped.session_id == session.id)
                      @grouped = true
                  end
                end
            end
          
          if @grouped
            grouping = 'True'
          else
            grouping = 'False'
          end
          
          xml.session(:sessionid => session.id, :grouped => grouping) do
            if session.order
              xml.order(:order => session.order)
            end
            if session.title != ''
              xml.sessiontitle session.title
            end
            if session.subtitle != ''
              xml.sessionsubtitle session.subtitle
            end
            if session.description != ''
              xml.description do 
                xml.cdata!(session.description)
              end
            end
            if session.day_id
              xml.sessionday(:id => session.day_id)
            end
            if session.starttime != ''
              xml.sessionstart session.starttime
            end
            if session.endtime != ''
              xml.sessionend session.endtime
            end
            session.speakers.each do |map|
                xml.sessionspeaker(:id =>map.speaker_id)
            end
            session.sponsors.each do |map|
                xml.sessionsponsor(:id =>map.sponsor_id)
            end
            if session.abstract_id
              xml.sessionabstract(:id => session.abstract_id)
            end
            if session.room_id
              xml.sessionroom(:id => session.room_id)
            end
            if session.rate
              xml.rate(:enabled => session.rate)
            end
            if session.livezone
              xml.livezone(:enabled => session.livezone)
            end
            if session.keynote
              xml.keynote(:enabled => session.keynote)
            end
            if session.break
              xml.break(:enabled => session.break)
            end
            if session.imageurl != ''
              xml.sessionimage(:url => session.imageurl)
            end
            if session.facebook
              xml.facebook(:enabled => session.facebook)
            end
            if session.twitter
              xml.twitter(:enabled => session.twitter)
            end
          end
        end
        @conference.groups.each do |group|
            if group.visible
                xml.session(:groupid => group.id.to_s, :grouped => "False"  ) do
                  if group.title != ''
                    xml.sessiontitle group.title
                  end
                  if group.day_id
                    xml.sessionday(:id => group.day_id)
                  end
                  if group.starttime != ''
                    xml.sessionstart group.starttime
                  end
                  if group.endtime != ''
                    xml.sessionend group.endtime
                  end
                  if group.imageurl != ''
                    xml.sessionimage(:url => group.imageurl)
                  end
                  group.groupmaps.each do |map|
                  	xml.sessionspeaker(:id => map.speaker_id)
              	  end
                end
            end
        end
    end

    xml.sessiongroups do
        @conference.groups.each do |group|
              xml.sessiongroup(:groupid => group.id, :visible => group.visible) do
                if group.title != ''
                  xml.grouptitle group.title
                end
                if group.subtitle != ''
                  xml.groupsubtitle group.subtitle
                end
                if group.day_id
                  xml.groupday(:id => group.day_id)
                end
                if group.starttime != ''
                  xml.groupstarttime group.starttime
                end
                if group.endtime != ''
                  xml.groupendtime group.endtime
                end
                if group.imageurl != ''
                  xml.groupimage group.imageurl
                end
                  xml.list do
                      group.groups_group.each do |grouping|
                          if !(grouping.subgroup_id == nil)
                              xml.group(:id => grouping.subgroup_id)
                          end
                          if !(grouping.session_id == nil)
                              xml.session(:id => grouping.session_id)
                          end
                      end
                  end
              end
        end
    end

    xml.speakers do
        @conference.speakers.each do |speaker|
            xml.speaker(:speakerid => speaker.id) do
              if speaker.name != ''
                xml.speakername speaker.name
              end
              if speaker.title != ''
                xml.speakertitle speaker.title
              end
              if speaker.company != ''
                xml.speakercompany speaker.company
              end
              if speaker.location != ''
                xml.speakerlocation speaker.location
              end
              if speaker.bio != ''
                xml.speakerbio do
                    xml.cdata!(speaker.bio)
                end
              end
              if speaker.imageurl != ''
                xml.speakerimage(:url => speaker.imageurl)
              end
              if speaker.level != ''
                xml.speakerlevel speaker.level
              end
            end
        end
    end
    
    xml.abstracts do
        @conference.abstracts.each do |abstract|
            xml.abstract(:abstractid => abstract.id) do
                if abstract.title != ''
                  xml.abstracttitle abstract.title
                end
#                abstract.speakers.each do |map|
#                    xml.abstractspeaker(:id => map.speaker_id)
#                end
                if abstract.text != ''
                  xml.abstracttext do
                      xml.cdata!(abstract.text)
                  end
                end
            end
        end
    end

    xml.sponsors do
        @conference.sponsors.each do |sponsor|
            xml.sponsor(:sponsorid => sponsor.id) do
              if sponsor.name != ''
                xml.sponsorname sponsor.name
              end
              if sponsor.information != ''
                xml.sponsorinformation do
                    xml.cdata!(sponsor.information)
                end
              end
              if sponsor.level != ''
                xml.sponsorlevel sponsor.level
              end
              if sponsor.logourl != ''
                xml.sponsorlogo(:url => sponsor.logourl)
              end
                sponsor.documents.each do |document|
                    xml.sponsordocument(document.title, :id => document.id, :url => document.url)
                end
              if sponsor.url != ''
                xml.sponsorurl(:url => sponsor.url)
              end
              if sponsor.booth != ''
                xml.sponsorbooth(:url => sponsor.booth)
              end
              if sponsor.secondImage != ''
                xml.secondimage(:url => sponsor.secondImage)
              end
                xml.contactdetails(:name => sponsor.contactName, :number => sponsor.contactNumber, :email => sponsor.contactEmail, :address => sponsor.contactAddress)
                xml.socialmedia(:linkedin => sponsor.linkedin, :facebook => sponsor.twitter, :twitter => sponsor.facebook)
            end
        end
    end

    xml.rooms do
        @conference.rooms.each do |room|
            xml.room(:roomid => room.id) do
              if room.name != ''
                xml.roomname room.name
              end
              if room.description != ''
                xml.roomdescription room.description
              end
              if room.imageurl != ''
                xml.roomimage(:url => room.imageurl)
              end
            end
        end
    end
	
	xml.downloads do
        @conference.downloads.each do |download|
            xml.download(:downloadid => download.id) do
              if download.name != ''
                xml.downloadname download.name
              end
              if download.url != ''
                xml.downloadurl(:url => download.url)
              end
              if download.group != ''
                xml.downloadgroup download.group
              end
              if download.subgroup != ''
                xml.downloadsubgroup download.subgroup
              end
              if download.icon != ''
                xml.downloadicon(:url => download.icon)
              end
            end
        end
    end
end
