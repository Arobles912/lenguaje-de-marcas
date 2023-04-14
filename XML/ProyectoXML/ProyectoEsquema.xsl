<?xml version="1.0" encoding="UTF-8"?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" >
<xs:element name="Curriculum">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="DatosPersonales" type="PatronPersonal" maxOccurs="unbounded"/>
        <xs:element name="DatosContacto" type="PatronContacto" maxOccurs="unbounded"/>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
  
      <xs:complexType name="PatronPersonal">
      <xs:sequence>
      <xs:element name="Nombre" type="xs:string"/>
       <xs:element name="Apellidos" type="xs:string"/>
        <xs:element name="FechaNacimiento" type="xs:date"/>
        <xs:element name="LugarNacimiento" type="xs:string"/>
        <xs:element name="Nacionalidades" type="TipoNacionalidades"/>
        <xs:element name="DNI" type="RestriccionDNI"/>
        <xs:element name="Foto" type="PatronFoto" default="JPG" />
      </xs:sequence>
    </xs:complexType>
    
      <xs:complexType name="PatronContacto">
      <xs:sequence>
      <xs:element name="TipoVia" type="PatronTipoVia"/>
       <xs:element name="NombreVia" type="xs:string"/>
        <xs:element name="Numero" type="xs:integer" minOccurs="0"/>
        <xs:element name="Portal" type="xs:string" minOccurs="0"/>
        <xs:element name="Escalera" type="xs:integer" minOccurs="0"/>
        <xs:element name="Piso" type="xs:integer" minOccurs="0"/>
        <xs:element name="Puerta" type="xs:integer" minOccurs="0"/>
        <xs:element name="CodigoPostal" type="PatronCodigo"/>
        <xs:element name="Pais" type="xs:string"/>
        <xs:element name="Email" type="PatronEmail"/>
        <xs:element name="Telefono" type="PatronTelefono"/>
        <xs:element name="TelefonoFijo" type="PatronTelefono" minOccurs="0"/>
      </xs:sequence>
    </xs:complexType>
    
  <xs:simpleType name="PatronEmail">
  <xs:restriction base="xs:string">
    <xs:pattern value="([A-z|\-|_|\d])+(\.([A-z|\-|_|\d)])+)*@([A-z|\-|_|\d])+(\.([A-z|\-|_|\d)])+)*"/>
  </xs:restriction>
</xs:simpleType>    
    
    <xs:simpleType name="PatronTipoVia">
  <xs:restriction base="xs:string">
    <xs:pattern value="(Calle|Avenida|Camino)"/>
  </xs:restriction>
</xs:simpleType>

  <xs:simpleType name="PatronTelefono">
  <xs:restriction base="xs:int">
     <xs:pattern value="[0-9]{7}"/>
  </xs:restriction>
</xs:simpleType>

    <xs:simpleType name="PatronCodigo">
  <xs:restriction base="xs:int">
        <xs:pattern value="[0-9]{5}"/>
  </xs:restriction>
</xs:simpleType>
    
  <xs:simpleType name="RestriccionDni">
  <xs:restriction base="xs:string">
    <xs:pattern value="[0-9]+[A-Z]"/>
  </xs:restriction>
</xs:simpleType>

<xs:complexType name="TipoNacionalidades">
  <xs:sequence>
    <xs:element name="Nacionalidad" type="xs:string"/>
  </xs:sequence>
</xs:complexType>

  <xs:simpleType name="PatronFoto">
  <xs:restriction base="xs:string">
    <xs:pattern value="[A-Z] +(JPG|PNG)"/>
  </xs:restriction>
</xs:simpleType>
    
    
</xs:schema>
