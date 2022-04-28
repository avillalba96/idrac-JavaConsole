# idrac-JavaConsole

## **IDRAC6 Virtual Console Launcher** *(Probado en Ubuntu20.04)*

### **GUIA DE INSTALACION**

* Instalar los paquetes necesarios:

```bash
sudo apt update
sudo apt install -y default-jre default-jdk icedtea-netx wget
```

* Editar encriptaciones necesarias para java:

```bash
sudo echo "#jdk.tls.disabledAlgorithms=SSLv3, DES, MD5withRSA, DH keySize < 1024, \" >> /etc/java-11-openjdk/security/java.security
sudo echo "jdk.tls.disabledAlgorithms=DES" >> /etc/java-11-openjdk/security/java.security
sudo echo "jdk.certpath.disabledAlgorithms=MD2" >> /etc/java-11-openjdk/security/java.security
```

* Ejecutar el script "startkvm.sh"

### **EXTRAS**

* **NOTA:** En caso de que le tire alerta de keyboard igualmente verificar si les detecta las teclas, en caso contrario probar con el siguiente link *(no probado por mi)*

<https://techblog.jeppson.org/2020/02/java-idrac-6-connection-failed-fix/>

* **FUENTE:** <https://gist.github.com/xbb/4fd651c2493ad9284dbcb827dc8886d6>
