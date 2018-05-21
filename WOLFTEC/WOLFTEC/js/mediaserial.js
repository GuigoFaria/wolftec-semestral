const SerialPort = require('serialport');
const Readline = SerialPort.parsers.Readline;

class ArduinoDataRead {

    constructor(){
        this.listData = [];
    }

    get List() {
        return this.listData;
    }

    SetConnection(){

        SerialPort.list().then(listSerialDevices => {
            
            let listArduinoSerial = listSerialDevices.filter(serialDevice => {
                return serialDevice.vendorId == 2341 && serialDevice.productId == 43;
            });
            
            if (listArduinoSerial.length != 1){
                throw new Error("The Arduino was not connected or has many boards connceted");
            }

            console.log("Arduino found in the com %s", listArduinoSerial[0].comName);
             
            return  listArduinoSerial[0].comName;
            
        }).then(arduinoCom => {
            
            let arduino = new SerialPort(arduinoCom, {baudRate: 9600});
            
            const parser = new Readline();
            arduino.pipe(parser);
            
            parser.on('data', (data) => {
				// inserirRegistro(data); // leitura em tempo real
                this.listData.push(parseFloat(data));
				
				var sum = this.listData.reduce((a, b) => a + b, 0);
				var average = (sum / this.listData.length).toFixed(2);
				inserirRegistro(average);
            });
            
        }).catch(error => console.log(error));
    } 
}

const serial = new ArduinoDataRead();
serial.SetConnection();

module.exports.ArduinoData = {List: serial.List} 



	var Connection = require('tedious').Connection;  
    var config = {  
        userName: 'guigafaria',  
        password: 'Abcd@1234',  
        server: 'guilherme-faria.database.windows.net',  
        // If you are on Microsoft Azure, you need this:  
        options: {encrypt: true, database: 'BaseDeDados1'}  
    };  
    var connection = new Connection(config);  
    connection.on('connect', function(err) {  
		if (err) {
			console.error('Erro ao tentar conexão com banco '+err);
		} else {
			console.log("Conectado com o SQL Server");  
		}
    }); 
	
	
	var Request = require('tedious').Request  
    var TYPES = require('tedious').TYPES;  

    function inserirRegistro(valor) {  
        request = new Request("INSERT into leitura(data_hora, valor,id_servidor) values (CURRENT_TIMESTAMP, @valor1, 1000);", function(err) {  
         if (err) {  
            console.log(err);}  
        });  
        request.addParameter('valor1', TYPES.Float, valor);  
        connection.execSql(request);  
    }  