Elm.App = Elm.App || {};
Elm.App.make = function (elm)
               {
                 elm.App = elm.App || {};
                 if (elm.App.values)
                 return elm.App.values;
                 var N = Elm.Native,
                     _N = N.Utils.make(elm),
                     _L = N.List.make(elm),
                     _E = N.Error.make(elm),
                     _J = N.JavaScript.make(elm),
                     $moduleName = "App";
                 var Text = Elm.Text.make(elm);
                 var Text = Elm.Text.make(elm);
                 var Basics = Elm.Basics.make(elm);
                 var Signal = Elm.Signal.make(elm);
                 var List = Elm.List.make(elm);
                 var Maybe = Elm.Maybe.make(elm);
                 var Time = Elm.Time.make(elm);
                 var Prelude = Elm.Prelude.make(elm);
                 var Graphics = Graphics || {};
                 Graphics.Element = Elm.Graphics.Element.make(elm);
                 var Color = Elm.Color.make(elm);
                 var Graphics = Graphics || {};
                 Graphics.Collage = Elm.Graphics.Collage.make(elm);
                 var Window = Elm.Window.make(elm);
                 var _op = {};
                 var scene = function (_v0)
                             {
                               return function ()
                                      {
                                        switch (_v0.ctor)
                                        {case
                                         "_Tuple2" :
                                           return function ()
                                                  {
                                                    var wrds = Graphics.Element.width(90)(Text.plainText("hello world, I am an Elm program!"));
                                                    return Graphics.Element.color(Color.blue)(A4(Graphics.Element.container,
                                                                                                 100,
                                                                                                 100,
                                                                                                 Graphics.Element.middle,
                                                                                                 wrds));
                                                  }();}
                                        _E.Case($moduleName,"between lines 5 and 6");
                                      }();
                             };
                 var main = A2(Signal._op["<~"],scene,Window.dimensions);
                 elm.App.values = {_op: _op, scene: scene, main: main};
                 return elm.App.values;
               };