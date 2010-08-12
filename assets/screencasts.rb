#!/usr/bin/env ruby

def flash_container(swf)
  screencast = swf.gsub(/\.swf$/, '')
  title = screencast.gsub(/[-_]/, ' ').capitalize
  File.open("_posts/en/1900-01-01-screencast-#{screencast}.html", 'w') do |container|
    container.write "---\ntitle: \"Screencast: #{title}\"\nlayout: default\n---\n"
    container.write <<EOF
      <OBJECT
            CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
            WIDTH="1024"
            HEIGHT="728"
            CODEBASE="http://active.macromedia.com/flash5/cabs/swflash.cab#version=7,0,0,0">
        <PARAM NAME=movie VALUE="/assets/swf/#{swf}">
        <PARAM NAME=play VALUE=true>
        <PARAM NAME=loop VALUE=false>
        <PARAM NAME=wmode VALUE=transparent>
        <PARAM NAME=quality VALUE=low>
        <EMBED
            SRC="/assets/swf/#{swf}"
            WIDTH=1024
            HEIGHT=728
            quality=low
            loop=false
            wmode=transparent
            TYPE="application/x-shockwave-flash"
            PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">
        </EMBED>
      </OBJECT>
      <script>
        obj=document.getElementsByTagName('object');
        for (var i=0; i<obj.length; ++i) {
          obj[i].outerHTML=obj[i].outerHTML;
        }
      </script>
EOF
  end
end

Dir['assets/swf/*.swf'].each { |swf|
  flash_container(File.basename(swf))
}
