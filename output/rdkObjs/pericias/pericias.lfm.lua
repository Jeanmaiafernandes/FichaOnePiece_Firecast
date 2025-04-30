require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmPericias()
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
    obj:setName("frmPericias");
    obj:setTitle("OpPericias");
    obj:setWidth(800);
    obj:setHeight(600);
    obj:setDataType("OpPericias");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setLeft(20);
    obj.layout1:setTop(30);
    obj.layout1:setWidth(700);
    obj.layout1:setHeight(500);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(340);
    obj.layout2:setHeight(500);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setLeft(0);
    obj.label1:setTop(0);
    obj.label1:setText("PERÍCIAS FÍSICAS");
    obj.label1:setWidth(340);
    lfm_setPropAsString(obj.label1, "fontStyle", "bold");
    obj.label1:setFontSize(12);
    obj.label1:setName("label1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(30);
    obj.layout3:setWidth(340);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setLeft(0);
    obj.label2:setTop(0);
    obj.label2:setText("Atletismo");
    obj.label2:setWidth(150);
    obj.label2:setWordWrap(false);
    obj.label2:setName("label2");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout3);
    obj.checkBox1:setLeft(160);
    obj.checkBox1:setTop(0);
    obj.checkBox1:setField("profAtletismo");
    obj.checkBox1:setName("checkBox1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setLeft(180);
    obj.label3:setTop(0);
    obj.label3:setText("FOR");
    obj.label3:setWidth(40);
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout3);
    obj.label4:setLeft(230);
    obj.label4:setTop(0);
    obj.label4:setField("totalAtletismo");
    obj.label4:setWidth(60);
    obj.label4:setHorzTextAlign("center");
    obj.label4.format = "%.1f";
    obj.label4:setName("label4");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout2);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(55);
    obj.layout4:setWidth(340);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout4);
    obj.label5:setLeft(0);
    obj.label5:setTop(0);
    obj.label5:setText("Acrobacia");
    obj.label5:setWidth(150);
    obj.label5:setWordWrap(false);
    obj.label5:setName("label5");

    obj.checkBox2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout4);
    obj.checkBox2:setLeft(160);
    obj.checkBox2:setTop(0);
    obj.checkBox2:setField("profAcrobacia");
    obj.checkBox2:setName("checkBox2");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout4);
    obj.label6:setLeft(180);
    obj.label6:setTop(0);
    obj.label6:setText("DES");
    obj.label6:setWidth(40);
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setLeft(230);
    obj.label7:setTop(0);
    obj.label7:setField("totalAcrobacia");
    obj.label7:setWidth(60);
    obj.label7:setHorzTextAlign("center");
    obj.label7.format = "%.1f";
    obj.label7:setName("label7");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout2);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(80);
    obj.layout5:setWidth(340);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout5);
    obj.label8:setLeft(0);
    obj.label8:setTop(0);
    obj.label8:setText("Furtividade");
    obj.label8:setWidth(150);
    obj.label8:setWordWrap(false);
    obj.label8:setName("label8");

    obj.checkBox3 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout5);
    obj.checkBox3:setLeft(160);
    obj.checkBox3:setTop(0);
    obj.checkBox3:setField("profFurtividade");
    obj.checkBox3:setName("checkBox3");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout5);
    obj.label9:setLeft(180);
    obj.label9:setTop(0);
    obj.label9:setText("DES");
    obj.label9:setWidth(40);
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout5);
    obj.label10:setLeft(230);
    obj.label10:setTop(0);
    obj.label10:setField("totalFurtividade");
    obj.label10:setWidth(60);
    obj.label10:setHorzTextAlign("center");
    obj.label10.format = "%.1f";
    obj.label10:setName("label10");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(230);
    obj.layout6:setTop(0);
    obj.layout6:setWidth(340);
    obj.layout6:setHeight(500);
    obj.layout6:setName("layout6");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setLeft(0);
    obj.label11:setTop(0);
    obj.label11:setText("PERÍCIAS SOCIAIS");
    obj.label11:setWidth(340);
    lfm_setPropAsString(obj.label11, "fontStyle", "bold");
    obj.label11:setFontSize(12);
    obj.label11:setName("label11");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(30);
    obj.layout7:setWidth(340);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout7);
    obj.label12:setLeft(0);
    obj.label12:setTop(0);
    obj.label12:setText("Enganação");
    obj.label12:setWidth(150);
    obj.label12:setWordWrap(false);
    obj.label12:setName("label12");

    obj.checkBox4 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout7);
    obj.checkBox4:setLeft(160);
    obj.checkBox4:setTop(0);
    obj.checkBox4:setField("profEnganacao");
    obj.checkBox4:setName("checkBox4");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout7);
    obj.label13:setLeft(180);
    obj.label13:setTop(0);
    obj.label13:setText("PRE");
    obj.label13:setWidth(40);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout7);
    obj.label14:setLeft(230);
    obj.label14:setTop(0);
    obj.label14:setField("totalEnganacao");
    obj.label14:setWidth(60);
    obj.label14:setHorzTextAlign("center");
    obj.label14.format = "%.1f";
    obj.label14:setName("label14");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout6);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(55);
    obj.layout8:setWidth(340);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout8);
    obj.label15:setLeft(0);
    obj.label15:setTop(0);
    obj.label15:setText("Intimidação");
    obj.label15:setWidth(150);
    obj.label15:setWordWrap(false);
    obj.label15:setName("label15");

    obj.checkBox5 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout8);
    obj.checkBox5:setLeft(160);
    obj.checkBox5:setTop(0);
    obj.checkBox5:setField("profIntimidacao");
    obj.checkBox5:setName("checkBox5");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout8);
    obj.label16:setLeft(180);
    obj.label16:setTop(0);
    obj.label16:setText("PRE");
    obj.label16:setWidth(40);
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout8);
    obj.label17:setLeft(230);
    obj.label17:setTop(0);
    obj.label17:setField("totalIntimidacao");
    obj.label17:setWidth(60);
    obj.label17:setHorzTextAlign("center");
    obj.label17.format = "%.1f";
    obj.label17:setName("label17");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout6);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(80);
    obj.layout9:setWidth(340);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout9);
    obj.label18:setLeft(0);
    obj.label18:setTop(0);
    obj.label18:setText("Persuasão");
    obj.label18:setWidth(150);
    obj.label18:setWordWrap(false);
    obj.label18:setName("label18");

    obj.checkBox6 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout9);
    obj.checkBox6:setLeft(160);
    obj.checkBox6:setTop(0);
    obj.checkBox6:setField("profPersuasao");
    obj.checkBox6:setName("checkBox6");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout9);
    obj.label19:setLeft(180);
    obj.label19:setTop(0);
    obj.label19:setText("PRE");
    obj.label19:setWidth(40);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout9);
    obj.label20:setLeft(230);
    obj.label20:setTop(0);
    obj.label20:setField("totalPersuasao");
    obj.label20:setWidth(60);
    obj.label20:setHorzTextAlign("center");
    obj.label20.format = "%.1f";
    obj.label20:setName("label20");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmPericias()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmPericias();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmPericias = {
    newEditor = newfrmPericias, 
    new = newfrmPericias, 
    name = "frmPericias", 
    dataType = "OpPericias", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    cacheMode = "none", 
    title = "OpPericias", 
    description=""};

frmPericias = _frmPericias;
Firecast.registrarForm(_frmPericias);
Firecast.registrarDataType(_frmPericias);

return _frmPericias;
