require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmOnePiece()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", obj.setNodeObject);

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setName("frmOnePiece");
    obj:setDataType("OpRPG");
    obj:setTitle("OpFicha");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setLeft(20);
    obj.layout1:setTop(20);
    obj.layout1:setWidth(400);
    obj.layout1:setHeight(300);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setText("ATRIBUTOS");
    obj.label1:setLeft(10);
    obj.label1:setTop(10);
    obj.label1:setWidth(380);
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setFontSize(14);
    obj.label1:setName("label1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(40);
    obj.layout2:setWidth(210);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setText("Força:");
    obj.label2:setAlign("left");
    obj.label2:setWidth(100);
    obj.label2:setAutoSize(true);
    obj.label2:setName("label2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("forca");
    obj.edit1:setAlign("client");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setWidth(50);
    obj.edit1:setName("edit1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setField("modificadorForca");
    obj.label3:setAlign("right");
    obj.label3:setWidth(70);
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(70);
    obj.layout3:setWidth(210);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout3);
    obj.label4:setText("Destreza:");
    obj.label4:setAlign("left");
    obj.label4:setWidth(100);
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setField("destreza");
    obj.edit2:setAlign("client");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setWidth(50);
    obj.edit2:setName("edit2");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setField("modificadorDestreza");
    obj.label5:setAlign("right");
    obj.label5:setWidth(70);
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(10);
    obj.layout4:setTop(100);
    obj.layout4:setWidth(210);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout4);
    obj.label6:setText("Constituição:");
    obj.label6:setAlign("left");
    obj.label6:setWidth(100);
    obj.label6:setAutoSize(true);
    obj.label6:setName("label6");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout4);
    obj.edit3:setField("constituicao");
    obj.edit3:setAlign("client");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setWidth(50);
    obj.edit3:setName("edit3");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setField("modificadorConstituicao");
    obj.label7:setAlign("right");
    obj.label7:setWidth(70);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout1);
    obj.layout5:setLeft(10);
    obj.layout5:setTop(130);
    obj.layout5:setWidth(210);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout5);
    obj.label8:setText("Sabedoria:");
    obj.label8:setAlign("left");
    obj.label8:setWidth(100);
    obj.label8:setAutoSize(true);
    obj.label8:setName("label8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout5);
    obj.edit4:setField("sabedoria");
    obj.edit4:setAlign("client");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setWidth(50);
    obj.edit4:setName("edit4");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout5);
    obj.label9:setField("modificadorSabedoria");
    obj.label9:setAlign("right");
    obj.label9:setWidth(70);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(10);
    obj.layout6:setTop(160);
    obj.layout6:setWidth(210);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout6);
    obj.label10:setText("Presença:");
    obj.label10:setAlign("left");
    obj.label10:setWidth(100);
    obj.label10:setAutoSize(true);
    obj.label10:setName("label10");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout6);
    obj.edit5:setField("presenca");
    obj.edit5:setAlign("client");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setWidth(50);
    obj.edit5:setName("edit5");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setField("modificadorPresenca");
    obj.label11:setAlign("right");
    obj.label11:setWidth(70);
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout1);
    obj.layout7:setLeft(10);
    obj.layout7:setTop(190);
    obj.layout7:setWidth(210);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout7);
    obj.label12:setText("Vontade:");
    obj.label12:setAlign("left");
    obj.label12:setWidth(100);
    obj.label12:setAutoSize(true);
    obj.label12:setName("label12");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout7);
    obj.edit6:setField("vontade");
    obj.edit6:setAlign("client");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setWidth(50);
    obj.edit6:setName("edit6");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout7);
    obj.label13:setField("modificadorVontade");
    obj.label13:setAlign("right");
    obj.label13:setWidth(70);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setField("forca");
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setField("destreza");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setField("constituicao");
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setField("sabedoria");
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setField("presenca");
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setField("vontade");
    obj.dataLink6:setName("dataLink6");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.forca or 10) / 2) - 5)
                        sheet.modificadorForca = (mod >= 0) and ("+"..mod) or mod
        end);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.destreza or 10) / 2) - 5)
                        sheet.modificadorDestreza = (mod >= 0) and ("+"..mod) or mod
        end);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.constituicao or 10) / 2) - 5)
                        sheet.modificadorConstituicao = (mod >= 0) and ("+"..mod) or mod
        end);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.sabedoria or 10) / 2) - 5)
                        sheet.modificadorSabedoria = (mod >= 0) and ("+"..mod) or mod
        end);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.presenca or 10) / 2) - 5)
                        sheet.modificadorPresenca = (mod >= 0) and ("+"..mod) or mod
        end);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (field, oldValue, newValue)
            local mod = math.floor(((sheet.vontade or 10) / 2) - 5)
                        sheet.modificadorVontade = (mod >= 0) and ("+"..mod) or mod
        end);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmOnePiece()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmOnePiece();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmOnePiece = {
    newEditor = newfrmOnePiece, 
    new = newfrmOnePiece, 
    name = "frmOnePiece", 
    dataType = "OpRPG", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "OpFicha", 
    description=""};

frmOnePiece = _frmOnePiece;
Firecast.registrarForm(_frmOnePiece);
Firecast.registrarDataType(_frmOnePiece);

return _frmOnePiece;
