use Ryml;
unit module Ryml::Components;

enum AcceptT is export <ACCEPT_audio/* ACCEPT_video/* ACCEPT_image/*>;
enum AlignT is export <ALIGN_left ALIGN_right ALIGN_top ALIGN_middle ALIGN_bottom>;
enum AutocompleteT is export <AUTOCOMPLETE_on AUTOCOMPLETE_off>;
enum BorderT is export <BORDER_1 BORDER_0>;
enum CaptionAlignT is export <CAPTIONALIGN_top CAPTIONALIGN_bottom CAPTIONALIGN_left CAPTIONALIGN_right>;
enum ClearT is export <CLEAR_none CLEAR_left CLEAR_right CLEAR_all>;
enum CrossoriginT is export <CROSSORIGIN_anonymous CROSSORIGIN_use-credentials>;
enum DirT is export <DIR_ltr DIR_rtl>;
enum DivAlignT is export <DIVALIGN_left DIVALIGN_right DIVALIGN_center DIVALIGN_justify>;
enum DropzoneT is export <DROPZONE_copy DROPZONE_move DROPZONE_link>;
enum EnctypeT is export <ENCTYPE_application/x-www-form-urlencoded ENCTYPE_multipart/form-data ENCTYPE_text/plain>;
enum FormenctypeT is export <FORMENCTYPE_application/x-www-form-urlencoded FORMENCTYPE_multipart/form-data FORMENCTYPE_text/plain>;
enum FormmethodT is export <FORMMETHOD_get FORMMETHOD_post>;
enum FormtargetT is export <FORMTARGET__blank FORMTARGET__self FORMTARGET__parent FORMTARGET__top>;
enum FrameT is export <FRAME_above FRAME_below FRAME_border FRAME_box FRAME_hsides FRAME_lhs FRAME_rhs FRAME_void FRAME_vsides>;
enum FrameborderT is export <FRAMEBORDER_0 FRAMEBORDER_1>;
enum HeadingsAlignT is export <HEADINGSALIGN_left HEADINGSALIGN_right HEADINGSALIGN_center HEADINGSALIGN_justify>;
enum HrAlignT is export <HRALIGN_left HRALIGN_center HRALIGN_right>;
enum Http-equivT is export <HTTP-EQUIV_content-type HTTP-EQUIV_default-style HTTP-EQUIV_refresh>;
enum InputTypeT is export <INPUTTYPE_button INPUTTYPE_checkbox INPUTTYPE_color INPUTTYPE_date  INPUTTYPE_datetime  INPUTTYPE_datetime-local  INPUTTYPE_email  INPUTTYPE_file INPUTTYPE_hidden INPUTTYPE_image INPUTTYPE_month  INPUTTYPE_number  INPUTTYPE_password INPUTTYPE_radio INPUTTYPE_range  INPUTTYPE_reset INPUTTYPE_search INPUTTYPE_submit INPUTTYPE_tel INPUTTYPE_text INPUTTYPE_time  INPUTTYPE_url INPUTTYPE_week>;
enum LegendAlignT is export <LEGENDALIGN_top LEGENDALIGN_bottom LEGENDALIGN_left LEGENDALIGN_right>;
enum LiTypeT is export <LITYPE_circle LITYPE_disc LITYPE_square LITYPE_a LITYPE_A LITYPE_i LITYPE_I LITYPE_1>;
enum LinkRelT is export <LINKREL_alternate LINKREL_author LINKREL_help LINKREL_icon LINKREL_license LINKREL_next LINKREL_prefetch LINKREL_prev LINKREL_search LINKREL_stylesheet LINKREL_tag>;
enum MethodT is export <METHOD_get METHOD_post>;
enum NameT is export <NAME_application-name NAME_author NAME_description NAME_generator NAME_keywords>;
enum OlTypeT is export <OLTYPE_1 OLTYPE_A OLTYPE_a OLTYPE_I OLTYPE_i>;
enum PAlignT is export <PALIGN_left PALIGN_right PALIGN_center PALIGN_justify>;
enum RelT is export <REL_alternate REL_author REL_bookmark REL_help REL_license REL_next REL_nofollow REL_noreferrer REL_prefetch REL_prev REL_search REL_tag>;
enum RulesT is export <RULES_all RULES_cols RULES_groups RULES_none RULES_rows>;
enum SandboxT is export <SANDBOX_allow-forms SANDBOX_allow-pointer-lock SANDBOX_allow-popups SANDBOX_allow-same-origin SANDBOX_allow-scripts SANDBOX_allow-top-navigation>;
enum ScopeT is export <SCOPE_col SCOPE_colgroup SCOPE_row SCOPE_rowgroup>;
enum ScrollingT is export <SCROLLING_yes SCROLLING_no SCROLLING_auto>;
enum ShapeT is export <SHAPE_rect SHAPE_circle SHAPE_poly SHAPE_default>;
enum TableAlignT is export <TABLEALIGN_left TABLEALIGN_center TABLEALIGN_right>;
enum TargetT is export <TARGET__blank TARGET__parent TARGET__self TARGET__top>;
enum TypeT is export <TYPE_button TYPE_submit TYPE_reset>;
enum ValignT is export <VALIGN_top VALIGN_middle VALIGN_bottom VALIGN_baseline>;
enum ValuetypeT is export <VALUETYPE_data VALUETYPE_ref VALUETYPE_object>;
enum WrapT is export <WRAP_hard WRAP_soft>;


sub circumfix:<a[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$charset,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Regex :$coords,
  Str :$data,
  DirT :$dir,
  Str :$download,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$href,
  Str :$hreflang,
  Str :$id,
  Str :$lang,
  Str :$media,
  Str :$name,
  RelT :$rel,
  Str :$rev,
  ShapeT :$shape,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  TargetT :$target,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<a>,
           :@c,
           :tags({
             :$accesskey,
             :$charset,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$coords,
             :$data,
             :$dir,
             :$download,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$href,
             :$hreflang,
             :$id,
             :$lang,
             :$media,
             :$name,
             :$rel,
             :$rev,
             :$shape,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$target,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<abbr[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<abbr>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<acronym[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<acronym>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<address[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<address>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<applet[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Str :$alt,
  Str :$archive,
  Array[Str] :$class,
  Str :$code,
  Str :$codebase,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Int :$height,
  Bool :$hidden,
  Int :$hspace,
  Str :$id,
  Str :$lang,
  Str :$name,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Int :$vspace,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<applet>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$alt,
             :$archive,
             :$class,
             :$code,
             :$codebase,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$height,
             :$hidden,
             :$hspace,
             :$id,
             :$lang,
             :$name,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$vspace,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<area[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$alt,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Array[Int] :$coords,
  Str :$data,
  DirT :$dir,
  Str :$download,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$href,
  Str :$hreflang,
  Str :$id,
  Str :$lang,
  Str :$media,
  Bool :$nohref,
  RelT :$rel,
  ShapeT :$shape,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  TargetT :$target,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<area>,
           :@c,
           :tags({
             :$accesskey,
             :$alt,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$coords,
             :$data,
             :$dir,
             :$download,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$href,
             :$hreflang,
             :$id,
             :$lang,
             :$media,
             :$nohref,
             :$rel,
             :$shape,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$target,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<article[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<article>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<aside[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<aside>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<audio[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<audio>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<b[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<b>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<base[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$href,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  TargetT :$target,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<base>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$href,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$target,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<basefont[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Str :$color,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$face,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$size,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<basefont>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$color,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$face,
             :$hidden,
             :$id,
             :$lang,
             :$size,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<bdi[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<bdi>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<bdo[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<bdo>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<big[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<big>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<blockquote[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$cite,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<blockquote>,
           :@c,
           :tags({
             :$accesskey,
             :$cite,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<body[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$alink,
  Str :$background,
  Str :$bgcolor,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$link,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$text,
  Str :$title,
  Bool :$translate,
  Str :$vlink,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<body>,
           :@c,
           :tags({
             :$accesskey,
             :$alink,
             :$background,
             :$bgcolor,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$link,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$text,
             :$title,
             :$translate,
             :$vlink,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<br[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  ClearT :$clear,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<br>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$clear,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<button[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Bool :$autofocus,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$form,
  Str :$formaction,
  FormenctypeT :$formenctype,
  FormmethodT :$formmethod,
  Bool :$formnovalidate,
  FormtargetT :$formtarget,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$name,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  TypeT :$type,
  Str :$value,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<button>,
           :@c,
           :tags({
             :$accesskey,
             :$autofocus,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$form,
             :$formaction,
             :$formenctype,
             :$formmethod,
             :$formnovalidate,
             :$formtarget,
             :$hidden,
             :$id,
             :$lang,
             :$name,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$value,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<canvas[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Int :$height,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<canvas>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$height,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<caption[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  CaptionAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<caption>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<center[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<center>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<cite[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<cite>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<code[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<code>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<col[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Int :$span,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<col>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$span,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<colgroup[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Int :$span,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<colgroup>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$span,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<data[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$value,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<data>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$value,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<datalist[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<datalist>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dd[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dd>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<del[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$cite,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DateTime :$datetime,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<del>,
           :@c,
           :tags({
             :$accesskey,
             :$cite,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$datetime,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<details[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<details>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dfn[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dfn>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dialog[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$open,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dialog>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$open,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dir[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$compact,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dir>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$compact,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<div[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  DivAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<div>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dl[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dl>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<dt[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<dt>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<em[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<em>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<embed[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<embed>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<fieldset[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<fieldset>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<figcaption[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<figcaption>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<figure[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<figure>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<font[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Str :$color,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$face,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$size,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<font>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$color,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$face,
             :$hidden,
             :$id,
             :$lang,
             :$size,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<footer[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<footer>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<form[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accept,
  Str :$accept-charset,
  Str :$accesskey,
  Str :$action,
  AutocompleteT :$autocomplete,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  EnctypeT :$enctype,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  MethodT :$method,
  Str :$name,
  Bool :$novalidate,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  TargetT :$target,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<form>,
           :@c,
           :tags({
             :$accept,
             :$accept-charset,
             :$accesskey,
             :$action,
             :$autocomplete,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$enctype,
             :$hidden,
             :$id,
             :$lang,
             :$method,
             :$name,
             :$novalidate,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$target,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<frame[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  FrameborderT :$frameborder,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$longdesc,
  Int :$marginheight,
  Int :$marginwidth,
  Str :$name,
  Bool :$noresize,
  ScrollingT :$scrolling,
  Bool :$spellcheck,
  Str :$src,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<frame>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$frameborder,
             :$hidden,
             :$id,
             :$lang,
             :$longdesc,
             :$marginheight,
             :$marginwidth,
             :$name,
             :$noresize,
             :$scrolling,
             :$spellcheck,
             :$src,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<frameset[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Array[Num] :$cols,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Array[Num] :$rows,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<frameset>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$cols,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$rows,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<head[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$profile,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<head>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$profile,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<header[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<header>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<headings[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  HeadingsAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<headings>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<hgroup[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<hgroup>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<hr[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  HrAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$noshade,
  Int :$size,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<hr>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$noshade,
             :$size,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<html[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$manifest,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$version,
  Str :$xml-lang,
  Str :$xmlns,
   --> RyEl) is export {

  RyEl.new(:tag<html>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$manifest,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$version,
             :$xml-lang,
             :$xmlns,
            })
          ); 
}


sub circumfix:<i[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<i>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<iframe[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  FrameborderT :$frameborder,
  Int :$height,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$longdesc,
  Int :$marginheight,
  Int :$marginwidth,
  Str :$name,
  SandboxT :$sandbox,
  ScrollingT :$scrolling,
  Bool :$seamless,
  Bool :$spellcheck,
  Str :$src,
  Str :$srcdoc,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<iframe>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$frameborder,
             :$height,
             :$hidden,
             :$id,
             :$lang,
             :$longdesc,
             :$marginheight,
             :$marginwidth,
             :$name,
             :$sandbox,
             :$scrolling,
             :$seamless,
             :$spellcheck,
             :$src,
             :$srcdoc,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<img[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Str :$alt,
  Int :$border,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  CrossoriginT :$crossorigin,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Int :$height,
  Bool :$hidden,
  Int :$hspace,
  Str :$id,
  Bool :$ismap,
  Str :$lang,
  Str :$longdesc,
  Bool :$spellcheck,
  Str :$src,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$usemap,
  Int :$vspace,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<img>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$alt,
             :$border,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$crossorigin,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$height,
             :$hidden,
             :$hspace,
             :$id,
             :$ismap,
             :$lang,
             :$longdesc,
             :$spellcheck,
             :$src,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$usemap,
             :$vspace,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<input[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  AcceptT :$accept,
  Str :$accesskey,
  AlignT :$align,
  Str :$alt,
  AutocompleteT :$autocomplete,
  Bool :$autofocus,
  Bool :$checked,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$form,
  Str :$formaction,
  FormenctypeT :$formenctype,
  FormmethodT :$formmethod,
  Bool :$formnovalidate,
  FormtargetT :$formtarget,
  Int :$height,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$list,
  DateTime :$max,
  Str :$maxlength,
  DateTime :$min,
  Str :$minlength,
  Bool :$multiple,
  Str :$name,
  Regex :$pattern,
  Str :$placeholder,
  Bool :$readonly,
  Bool :$required,
  Str :$size,
  Bool :$spellcheck,
  Str :$src,
  DateTime :$step,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  InputTypeT :$type,
  Str :$value,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<input>,
           :@c,
           :tags({
             :$accept,
             :$accesskey,
             :$align,
             :$alt,
             :$autocomplete,
             :$autofocus,
             :$checked,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$form,
             :$formaction,
             :$formenctype,
             :$formmethod,
             :$formnovalidate,
             :$formtarget,
             :$height,
             :$hidden,
             :$id,
             :$lang,
             :$list,
             :$max,
             :$maxlength,
             :$min,
             :$minlength,
             :$multiple,
             :$name,
             :$pattern,
             :$placeholder,
             :$readonly,
             :$required,
             :$size,
             :$spellcheck,
             :$src,
             :$step,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$value,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<ins[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$cite,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DateTime :$datetime,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<ins>,
           :@c,
           :tags({
             :$accesskey,
             :$cite,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$datetime,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<kbd[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<kbd>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<keygen[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<keygen>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<label[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$for,
  Str :$form,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<label>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$for,
             :$form,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<legend[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  LegendAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<legend>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<li[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  LiTypeT :$type,
  Str :$value,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<li>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$value,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<link[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$charset,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  CrossoriginT :$crossorigin,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$href,
  Str :$hreflang,
  Str :$id,
  Str :$lang,
  Str :$media,
  LinkRelT :$rel,
  Str :$rev,
  Str :$sizes,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  TargetT :$target,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<link>,
           :@c,
           :tags({
             :$accesskey,
             :$charset,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$crossorigin,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$href,
             :$hreflang,
             :$id,
             :$lang,
             :$media,
             :$rel,
             :$rev,
             :$sizes,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$target,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<main[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<main>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<map[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$name,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<map>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$name,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<mark[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<mark>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<menu[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$label,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  TypeT :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<menu>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$label,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<menuitem[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<menuitem>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<meta[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$charset,
  Array[Str] :$class,
  Str :$content,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Http-equivT :$http-equiv,
  Str :$id,
  Str :$lang,
  NameT :$name,
  Str :$scheme,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<meta>,
           :@c,
           :tags({
             :$accesskey,
             :$charset,
             :$class,
             :$content,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$http-equiv,
             :$id,
             :$lang,
             :$name,
             :$scheme,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<meter[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<meter>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<nav[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<nav>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<noframes[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<noframes>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<noscript[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<noscript>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<object[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Str :$archive,
  Int :$border,
  Array[Str] :$class,
  Str :$classid,
  Str :$codebase,
  Str :$codetype,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  Bool :$declare,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$form,
  Int :$height,
  Bool :$hidden,
  Int :$hspace,
  Str :$id,
  Str :$lang,
  Str :$name,
  Bool :$spellcheck,
  Str :$standby,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$usemap,
  Int :$vspace,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<object>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$archive,
             :$border,
             :$class,
             :$classid,
             :$codebase,
             :$codetype,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$declare,
             :$dir,
             :$draggable,
             :$dropzone,
             :$form,
             :$height,
             :$hidden,
             :$hspace,
             :$id,
             :$lang,
             :$name,
             :$spellcheck,
             :$standby,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$usemap,
             :$vspace,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<ol[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$compact,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$reversed,
  Bool :$spellcheck,
  Str :$start,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  OlTypeT :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<ol>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$compact,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$reversed,
             :$spellcheck,
             :$start,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<optgroup[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$label,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<optgroup>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$label,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<option[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$label,
  Str :$lang,
  Bool :$selected,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$value,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<option>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$label,
             :$lang,
             :$selected,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$value,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<output[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<output>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<p[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  PAlignT :$align,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<p>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<param[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$name,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$value,
  ValuetypeT :$valuetype,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<param>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$name,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$value,
             :$valuetype,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<picture[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<picture>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<pre[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<pre>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<progress[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<progress>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<q[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Str :$cite,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<q>,
           :@c,
           :tags({
             :$accesskey,
             :$cite,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<rp[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<rp>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<rt[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<rt>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<ruby[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<ruby>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<s[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<s>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<samp[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<samp>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<script[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Bool :$async,
  Str :$charset,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  Bool :$defer,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$src,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$xml-lang,
  Bool :$xml-space,
   --> RyEl) is export {

  RyEl.new(:tag<script>,
           :@c,
           :tags({
             :$accesskey,
             :$async,
             :$charset,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$defer,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$src,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
             :$xml-space,
            })
          ); 
}


sub circumfix:<section[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<section>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<select[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Bool :$autofocus,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$form,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$multiple,
  Str :$name,
  Bool :$required,
  Str :$size,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<select>,
           :@c,
           :tags({
             :$accesskey,
             :$autofocus,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$form,
             :$hidden,
             :$id,
             :$lang,
             :$multiple,
             :$name,
             :$required,
             :$size,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<small[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<small>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<source[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<source>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<span[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<span>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<strike[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<strike>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<strong[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<strong>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<style[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$media,
  Bool :$scoped,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Str :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<style>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$media,
             :$scoped,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<sub[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<sub>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<summary[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<summary>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<sup[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<sup>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<svg[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<svg>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<table[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  TableAlignT :$align,
  Str :$bgcolor,
  BorderT :$border,
  Int :$cellpadding,
  Int :$cellspacing,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  FrameT :$frame,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  RulesT :$rules,
  Bool :$sortable,
  Bool :$spellcheck,
  Str :$style,
  Str :$summary,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<table>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$bgcolor,
             :$border,
             :$cellpadding,
             :$cellspacing,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$frame,
             :$hidden,
             :$id,
             :$lang,
             :$rules,
             :$sortable,
             :$spellcheck,
             :$style,
             :$summary,
             :$tabindex,
             :$title,
             :$translate,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<tbody[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<tbody>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<td[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$abbr,
  Str :$accesskey,
  AlignT :$align,
  Str :$axis,
  Str :$bgcolor,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Str :$colspan,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$headers,
  Int :$height,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$nowrap,
  Str :$rowspan,
  ScopeT :$scope,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<td>,
           :@c,
           :tags({
             :$abbr,
             :$accesskey,
             :$align,
             :$axis,
             :$bgcolor,
             :$char,
             :$charoff,
             :$class,
             :$colspan,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$headers,
             :$height,
             :$hidden,
             :$id,
             :$lang,
             :$nowrap,
             :$rowspan,
             :$scope,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<template[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<template>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<textarea[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Bool :$autofocus,
  Array[Str] :$class,
  Str :$cols,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$disabled,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$form,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Str :$maxlength,
  Str :$minlength,
  Str :$name,
  Str :$placeholder,
  Bool :$readonly,
  Bool :$required,
  Str :$rows,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  WrapT :$wrap,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<textarea>,
           :@c,
           :tags({
             :$accesskey,
             :$autofocus,
             :$class,
             :$cols,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$disabled,
             :$draggable,
             :$dropzone,
             :$form,
             :$hidden,
             :$id,
             :$lang,
             :$maxlength,
             :$minlength,
             :$name,
             :$placeholder,
             :$readonly,
             :$required,
             :$rows,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$wrap,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<tfoot[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<tfoot>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<th[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$abbr,
  Str :$accesskey,
  AlignT :$align,
  Str :$axis,
  Str :$bgcolor,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Str :$colspan,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Str :$headers,
  Int :$height,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$nowrap,
  Str :$rowspan,
  ScopeT :$scope,
  Num :$sorted,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Int :$width,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<th>,
           :@c,
           :tags({
             :$abbr,
             :$accesskey,
             :$align,
             :$axis,
             :$bgcolor,
             :$char,
             :$charoff,
             :$class,
             :$colspan,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$headers,
             :$height,
             :$hidden,
             :$id,
             :$lang,
             :$nowrap,
             :$rowspan,
             :$scope,
             :$sorted,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$width,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<thead[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<thead>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<time[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<time>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<title[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<title>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<tr[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  AlignT :$align,
  Str :$bgcolor,
  Regex :$char,
  Str :$charoff,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  ValignT :$valign,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<tr>,
           :@c,
           :tags({
             :$accesskey,
             :$align,
             :$bgcolor,
             :$char,
             :$charoff,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$valign,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<track[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<track>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<tt[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<tt>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<u[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<u>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<ul[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$compact,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$tag,
  Str :$title,
  Bool :$translate,
  TypeT :$type,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<ul>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$compact,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$type,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<var[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<var>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<video[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<video>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}


sub circumfix:<wbr[ ]> (
  Array[RyEl] :@c,
  Str :$t,
  

  Str :$accesskey,
  Array[Str] :$class,
  Bool :$contenteditable,
  Str :$contextmenu,
  Str :$data,
  DirT :$dir,
  Bool :$draggable,
  DropzoneT :$dropzone,
  Bool :$hidden,
  Str :$id,
  Str :$lang,
  Bool :$spellcheck,
  Str :$style,
  Num :$tabindex,
  Str :$title,
  Bool :$translate,
  Str :$xml-lang,
   --> RyEl) is export {

  RyEl.new(:tag<wbr>,
           :@c,
           :tags({
             :$accesskey,
             :$class,
             :$contenteditable,
             :$contextmenu,
             :$data,
             :$dir,
             :$draggable,
             :$dropzone,
             :$hidden,
             :$id,
             :$lang,
             :$spellcheck,
             :$style,
             :$tabindex,
             :$title,
             :$translate,
             :$xml-lang,
            })
          ); 
}
