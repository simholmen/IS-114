include shared-gdrive("dcic-2021","1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
    #String-sanitizer for å få energi kolonnen til string
    sanitize energi using string-sanitizer
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
  
      
  end

#b) fiksa funksjonen ved hjelp av cases
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 40
  end
where: 
  energi-to-number("") is 40
  energi-to-number("48") is 48
  energi-to-number("37") is 37
end


#c) transformerer hele kolonnen med energi fra string til tall
string-tall = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

string-tall

#d) Regner ut totale energiforbruket til en typsik inbygger, 155 uten bil og 195 med bil
sum(string-tall, "energi")


#e) får opp en chart for energiforbruket, måtte endre "non => 0" til "non => 40" og "energi-to-number("") is 0" til "energi-to-number("") is 40" for å få rett nummer inn i visualiseringa av funksjonen
bar-chart(string-tall, "komponent", "energi")
