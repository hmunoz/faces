// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.mycompany.jsf.converter;

import com.mycompany.domain.TipoPersona;
import com.mycompany.jsf.converter.TipoPersonaConverter;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

privileged aspect TipoPersonaConverter_Roo_Converter {
    
    declare parents: TipoPersonaConverter implements Converter;
    
    declare @type: TipoPersonaConverter: @FacesConverter("com.mycompany.jsf.converter.TipoPersonaConverter");
    
    public Object TipoPersonaConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Integer id = Integer.parseInt(value);
        return TipoPersona.findTipoPersona(id);
    }
    
    public String TipoPersonaConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof TipoPersona ? ((TipoPersona) value).getCodigo().toString() : "";
    }
    
}