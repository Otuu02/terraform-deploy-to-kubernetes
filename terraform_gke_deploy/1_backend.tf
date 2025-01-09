terraform { 
  cloud { 
    
    organization = "Gtechglobal" 

    workspaces { 
      name = "kubernetes-google-gke" 
    } 
  } 
}