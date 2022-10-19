import json
import qrcode
      
# table ids
ids = [1,2,3,4,5]

# Data to be written 
dictionary ={ 
  "table_id": "1"
} 
      
for i in ids:
    dictionary["table_id"]=str(i)

    # Serializing json  
    json_object = json.dumps(dictionary) 
    
    qr = qrcode.QRCode()
    qr.add_data(json_object)
    qr.make(fit=True)
    img = qr.make_image(fill='black',back_color='white')
    img.save(f"{i}.png")

