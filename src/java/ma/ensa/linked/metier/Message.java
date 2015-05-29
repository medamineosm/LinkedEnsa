/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.ensa.linked.metier;

/**
 *
 * @author PC
 */
public class Message {
    private String source;
    private String destination;
    private String objet;
    private String contenu;
    private boolean msg_lu;

    public Message() {
    }

    public Message(String source, String destination, String objet, String contenu, boolean msg_lu) {
        this.source = source;
        this.destination = destination;
        this.objet = objet;
        this.contenu = contenu;
        this.msg_lu = msg_lu;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getObjet() {
        return objet;
    }

    public void setObjet(String objet) {
        this.objet = objet;
    }

    public String getContenu() {
        return contenu;
    }

    public void setContenu(String contenu) {
        this.contenu = contenu;
    }

    public boolean isMsg_lu() {
        return msg_lu;
    }

    public void setMsg_lu(boolean msg_lu) {
        this.msg_lu = msg_lu;
    }
    
    
}
