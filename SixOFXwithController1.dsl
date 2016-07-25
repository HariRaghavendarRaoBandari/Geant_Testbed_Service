SixOFXwithController {
        description = "Six OFX with one controller VM. The OFXs are at different locations and connected."
        id = "SixOFXwithController"
        
      host  {
               id="controller"
               location="AMS"
               port { id="eth1" }
               port { id="eth2" }
               port { id="eth3" }
               port { id="eth4" }
               port { id="eth5" }
               port { id="eth6" }
        }

      host  {
               id="H1"
               location="AMS"
               port { id="eth1" }
        }
  
      host  {
               id="H2"
               location="LJU"
               port { id="eth1" }
        }

      host  {
               id="H3"
               location="LJU"
               port { id="eth1" }
        }
        
      host  {
               id="H4"
               location="PRG"
               port { id="eth1" }
        }
        
      host  {
               id="H5"
               location="CPH"
               port { id="eth1" }
        }
        
        host  {
               id="H6"
               location="HAM"
               port { id="eth1" }
        }
        
      link  {
               id="l1"
               port { id="src" }
               port { id="dst" }
        }

      link  {
               id="l2"
               port { id="src" }
               port { id="dst" }
        }

      link  {
               id="l3"
               port { id="src" }
               port { id="dst" }
        }

      link  {
               id="l4"
               port { id="src" }
               port { id="dst" }
        }
        
      link  {
               id="l5"
               port { id="src" }
               port { id="dst" }
        }
        
      link  {
               id="l6"
               port { id="src" }
               port { id="dst" }
        }
        
      link  {
               id="l7"
               port { id="src" }
               port { id="dst" }
        }
        
       link  {
               id="l8"
               port { id="src" }
               port { id="dst" }
        }
        
        link  {
               id="l9"
               port { id="src" }
               port { id="dst" }
        }
        
        link  {
               id="l10"
               port { id="src" }
               port { id="dst" }
        }
       
       link  {
               id="l11"
               port { id="src" }
               port { id="dst" }
        }
        
        link  {
               id="l12"
               port { id="src" }
               port { id="dst" }
        }
        
       link  {
               id="lc1"
               port { id="src" }
               port { id="dst" }
        }

      link  {
               id="lc2"
               port { id="src" }
               port { id="dst" }
        }
        
      link  {
               id="lc3"
               port { id="src" }
               port { id="dst" }
        }
        
      link  {
               id="lc4"
               port { id="src" }
               port { id="dst" }
        }
      link  {
               id="lc5"
               port { id="src" }
               port { id="dst" }
        }
        
        link  {
               id="lc6"
               port { id="src" }
               port { id="dst" }
        }
       
       ofx  {
               id="ofxAMS"
               location="AMS"
               fabricIPv4="10.10.10.1"
               fabricSubnetMaskv4="255.255.255.0"
               controllerPort="6633"
               controllerIPv4="10.10.10.10"
               port { id="p1"}
               port { id="p2"}
               port { id="p3"}
               port { id="pControl"
                      mode="CONTROL"
                    }
        }

       ofx  {
                id="ofxLJU"
                location="LJU"
                fabricIPv4="10.10.11.1"
                fabricSubnetMaskv4="255.255.255.0"
                controllerPort="6633"
                controllerIPv4="10.10.11.10"
                port { id="p1"}
                port { id="p2"}
                port { id="p3"}
                port { id="p4"}
                port { id="pControl"
                       mode="CONTROL"
                     }
        } 
        
        ofx  {
               id="ofxPRG"
               location="PRG"
               fabricIPv4="10.10.12.1"
               fabricSubnetMaskv4="255.255.255.0"
               controllerPort="6633"
               controllerIPv4="10.10.12.10"
               port { id="p1"}
               port { id="p2"}
               port { id="p3"}
               port { id="pControl"
                      mode="CONTROL"
                    }
        }
        
         ofx  {
                id="ofxBRA"
                location="BRA"
                fabricIPv4="10.10.13.1"
                fabricSubnetMaskv4="255.255.255.0"
                controllerPort="6633"
                controllerIPv4="10.10.13.10"
                port { id="p1"}
                port { id="p2"}
                port { id="pControl"
                       mode="CONTROL"
                     }
        } 
        
        ofx  {
                id="ofxCPH"
                location="CPH"
                fabricIPv4="10.10.14.1"
                fabricSubnetMaskv4="255.255.255.0"
                controllerPort="6633"
                controllerIPv4="10.10.14.10"
                port { id="p1"}
                port { id="p2"}
                port { id="p3"}
                port { id="p4"}
                port { id="pControl"
                       mode="CONTROL"
                     }
        } 
        
        ofx  {
                id="ofxHAM"
                location="HAM"
                fabricIPv4="10.10.15.1"
                fabricSubnetMaskv4="255.255.255.0"
                controllerPort="6633"
                controllerIPv4="10.10.15.10"
                port { id="p1"}
                port { id="p2"}
                port { id="pControl"
                       mode="CONTROL"
                     }
        } 

   adjacency H1.eth1, l1.src
   adjacency ofxAMS.p1, l1.dst
   adjacency controller.eth1, lc1.src
   adjacency ofxAMS.pControl, lc1.dst
   adjacency ofxAMS.p2, l2.src
   adjacency ofxLJU.p1, l2.dst
   adjacency ofxAMS.p3, l5.src
   adjacency ofxPRG.p3, l5.dst
   adjacency H4.eth1, l7.src
   adjacency ofxPRG.p1, l7.dst
   adjacency controller.eth2, lc2.src
   adjacency ofxPRG.pControl, lc2.dst
   adjacency ofxPRG.p2, l8.src
   adjacency ofxCPH.p4, l8.dst
   adjacency H2.eth1, l3.src
   adjacency ofxLJU.p2, l3.dst
   adjacency H3.eth1, l4.src
   adjacency ofxLJU.p3, l4.dst
   adjacency controller.eth3, lc3.src
   adjacency ofxLJU.pControl, lc3.dst
   adjacency ofxLJU.p4, l6.src
   adjacency ofxBRA.p1, l6.dst
   adjacency controller.eth4, lc4.src
   adjacency ofxBRA.pControl, lc4.dst
   adjacency ofxBRA.p2, l9.src
   adjacency ofxCPH.p3, l9.dst
   adjacency H5.eth1, l10.src
   adjacency ofxCPH.p1, l10.dst
   adjacency controller.eth5, lc5.src
   adjacency ofxCPH.pControl, lc5.dst
   adjacency ofxCPH.p2, l11.src
   adjacency ofxHAM.p1, l11.dst
   adjacency H6.eth1, l12.src
   adjacency ofxCPH.p1, l12.dst
   adjacency controller.eth6, lc6.src
   adjacency ofxHAM.pControl, lc6.dst
}
