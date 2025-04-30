require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmValores()
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
    obj:setName("frmValores");
    obj:setTitle("Valores");
    obj:setWidth(880);
    obj:setHeight(640);

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
    obj.layout2:setWidth(380);
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
    obj.layout3:setWidth(380);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout3);
    obj.label4:setText("Agilidade:");
    obj.label4:setAlign("left");
    obj.label4:setWidth(100);
    obj.label4:setAutoSize(true);
    obj.label4:setName("label4");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout3);
    obj.edit2:setField("agilidade");
    obj.edit2:setAlign("client");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setWidth(50);
    obj.edit2:setName("edit2");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setField("modificadorAgilidade");
    obj.label5:setAlign("right");
    obj.label5:setWidth(70);
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmValores()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmValores();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmValores = {
    newEditor = newfrmValores, 
    new = newfrmValores, 
    name = "frmValores", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "Valores", 
    description=""};

frmValores = _frmValores;
Firecast.registrarForm(_frmValores);

return _frmValores;
