/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.modelo;
   import java.util.ArrayList;
    import java.util.Iterator;
/**
 *
 * @author Mujica
 */
public class GestorTareas {
     private ArrayList<Tareas> lista;
    
    public GestorTareas(){
        lista = new ArrayList<Tareas>();
    }

    public ArrayList<Tareas> getLista() {
        return lista;
    }

    public void setLista(ArrayList<Tareas> lista) {
        this.lista = lista;
    }
    
    public void insertarTarea(Tareas item){
        lista.add(item);
    }
    public void modificarTarea(int pos, Tareas item){
        lista.set(pos, item);
    }
    public void eliminarTarea (int pos){
        lista.remove(pos);
    }
    public int obtieneId(){
        int idaux = 0;
        for (Tareas item : lista){
            idaux = item.getId();
        }
        return idaux + 1;
    }
    public int ubicarTarea(int id){
        int pos = -1;
        Iterator<Tareas> it = lista.iterator();
        
        while (it.hasNext()){
            ++pos;
            Tareas aux = it.next();
            if(aux.getId() == id){
                break;
            }
        }
        return pos;
    }
}
