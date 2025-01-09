terraform { 
  cloud { 
    
    organization = "Gtechglobal" 

    workspaces { 
      name = "kubernetes-gcp-gke" 
    } 
  } 
}