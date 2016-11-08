# General Aliases
alias ls='ls -al';
alias sortBySize="ls -s | sort -n";
alias watchStarWars='telnet towel.blinkenlights.nl';
alias bashProfile='more ~/.bash_profile';
alias rebootSystem='sudo reboot';

# Get weather data for Saint Peters
weather() {
    echo Saint Peters:
    curl -s "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?query=${@:-63376}" | perl -ne 's/&amp;deg;/°/g;/<title>([^<]+)/&&printf "%s: ",$1;/<fcttext>([^<]+)/&&print $1,"\n"';
}
