.class public Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;
.super Ljava/lang/Object;
.source "XmlKeyboardLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    }
.end annotation


# static fields
.field private static DEFAULT_SKB_CACHE_FLAG:Z = false

.field private static DEFAULT_SKB_STICKY_FLAG:Z = false

.field private static final KEYTYPE_ID_LAST:I = -0x1

.field private static final XMLATTR_BALLOON_BG:Ljava/lang/String; = "balloon_bg"

.field private static final XMLATTR_COLOR:Ljava/lang/String; = "color"

.field private static final XMLATTR_COLOR_BALLOON:Ljava/lang/String; = "color_balloon"

.field private static final XMLATTR_COLOR_HIGHLIGHT:Ljava/lang/String; = "color_highlight"

.field private static final XMLATTR_ID:Ljava/lang/String; = "id"

.field private static final XMLATTR_KEYTYPE_BG:Ljava/lang/String; = "bg"

.field private static final XMLATTR_KEYTYPE_HLBG:Ljava/lang/String; = "hlbg"

.field private static final XMLATTR_KEY_BALLOON:Ljava/lang/String; = "balloon"

.field private static final XMLATTR_KEY_CODE:Ljava/lang/String; = "code"

.field private static final XMLATTR_KEY_CODES:Ljava/lang/String; = "codes"

.field private static final XMLATTR_KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final XMLATTR_KEY_ICON:Ljava/lang/String; = "icon"

.field private static final XMLATTR_KEY_ICON_POPUP:Ljava/lang/String; = "icon_popup"

.field private static final XMLATTR_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final XMLATTR_KEY_LABELS:Ljava/lang/String; = "labels"

.field private static final XMLATTR_KEY_POPUP_SKBID:Ljava/lang/String; = "popup_skb"

.field private static final XMLATTR_KEY_REPEAT:Ljava/lang/String; = "repeat"

.field private static final XMLATTR_KEY_SPLITTER:Ljava/lang/String; = "splitter"

.field private static final XMLATTR_KEY_TYPE:Ljava/lang/String; = "key_type"

.field private static final XMLATTR_KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final XMLATTR_KEY_XMARGIN:Ljava/lang/String; = "key_xmargin"

.field private static final XMLATTR_KEY_YMARGIN:Ljava/lang/String; = "key_ymargin"

.field private static final XMLATTR_POPUP_BG:Ljava/lang/String; = "popup_bg"

.field private static final XMLATTR_QWERTY:Ljava/lang/String; = "qwerty"

.field private static final XMLATTR_QWERTY_UPPERCASE:Ljava/lang/String; = "qwerty_uppercase"

.field private static final XMLATTR_ROW_ID:Ljava/lang/String; = "row_id"

.field private static final XMLATTR_SKB_BG:Ljava/lang/String; = "skb_bg"

.field private static final XMLATTR_SKB_CACHE_FLAG:Ljava/lang/String; = "skb_cache_flag"

.field private static final XMLATTR_SKB_STICKY_FLAG:Ljava/lang/String; = "skb_sticky_flag"

.field private static final XMLATTR_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLATTR_START_POS_X:Ljava/lang/String; = "start_pos_x"

.field private static final XMLATTR_START_POS_Y:Ljava/lang/String; = "start_pos_y"

.field private static final XMLATTR_TOGGLE_STATE_ID:Ljava/lang/String; = "state_id"

.field private static final XMLTAG_KEY:Ljava/lang/String; = "key"

.field private static final XMLTAG_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final XMLTAG_KEYICON:Ljava/lang/String; = "key_icon"

.field private static final XMLTAG_KEYS:Ljava/lang/String; = "keys"

.field private static final XMLTAG_KEYTYPE:Ljava/lang/String; = "key_type"

.field private static final XMLTAG_ROW:Ljava/lang/String; = "row"

.field private static final XMLTAG_SKB_TEMPLATE:Ljava/lang/String; = "skb_template"

.field private static final XMLTAG_TOGGLE_STATE:Ljava/lang/String; = "toggle_state"


# instance fields
.field mAttrTmp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mKeyXMargin:F

.field mKeyXPos:F

.field mKeyYMargin:F

.field mKeyYPos:F

.field mNextEventFetched:Z

.field private mResources:Landroid/content/res/Resources;

.field mSkbHeight:I

.field private mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

.field mSkbWidth:I

.field private mXmlEventType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 246
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    .line 248
    sput-boolean v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    .line 285
    iput v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 323
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    .line 324
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 822
    const/4 v3, 0x0

    invoke-interface {p1, v3, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, s:Ljava/lang/String;
    if-nez v2, :cond_9

    move v3, p3

    .line 828
    :goto_8
    return v3

    .line 825
    :cond_9
    :try_start_9
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_f

    move-result v1

    .local v1, ret:Z
    move v3, v1

    .line 826
    goto :goto_8

    .line 827
    .end local v1           #ret:Z
    :catch_f
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, p3

    .line 828
    goto :goto_8
.end method

.method private getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .registers 10
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 774
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 776
    .local v1, resId:I
    if-nez v1, :cond_1e

    .line 777
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 778
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_10

    move v4, p3

    .line 786
    .end local v3           #s:Ljava/lang/String;
    :goto_f
    return v4

    .line 780
    .restart local v3       #s:Ljava/lang/String;
    :cond_10
    :try_start_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_1a

    move-result v2

    .local v2, ret:I
    move v4, v2

    .line 781
    goto :goto_f

    .line 782
    .end local v2           #ret:I
    :catch_1a
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    move v4, p3

    .line 783
    goto :goto_f

    .line 786
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_f
.end method

.method private getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 834
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, resId:I
    if-nez v0, :cond_a

    move-object v1, p3

    .line 836
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_9
.end method

.method private getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F
    .registers 11
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 800
    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 801
    .local v1, resId:I
    if-nez v1, :cond_36

    .line 802
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_10

    move v4, p3

    .line 816
    .end local v3           #s:Ljava/lang/String;
    :goto_f
    return v4

    .line 806
    .restart local v3       #s:Ljava/lang/String;
    :cond_10
    :try_start_10
    const-string v4, "%p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 807
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c8

    div-float v2, v4, v5

    .local v2, ret:F
    :goto_2b
    move v4, v2

    .line 811
    goto :goto_f

    .line 809
    .end local v2           #ret:F
    :cond_2d
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_30} :catch_32

    move-result v2

    .restart local v2       #ret:F
    goto :goto_2b

    .line 812
    .end local v2           #ret:F
    :catch_32
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    move v4, p3

    .line 813
    goto :goto_f

    .line 816
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_36
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    goto :goto_f
.end method

.method private getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I
    .registers 10
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 757
    const/4 v4, 0x0

    invoke-interface {p1, v5, p2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 759
    .local v1, resId:I
    if-nez v1, :cond_1e

    .line 760
    invoke-interface {p1, v5, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 761
    .local v3, s:Ljava/lang/String;
    if-nez v3, :cond_10

    move v4, p3

    .line 769
    .end local v3           #s:Ljava/lang/String;
    :goto_f
    return v4

    .line 763
    .restart local v3       #s:Ljava/lang/String;
    :cond_10
    :try_start_10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_1a

    move-result v2

    .local v2, ret:I
    move v4, v2

    .line 764
    goto :goto_f

    .line 765
    .end local v2           #ret:I
    :catch_1a
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    move v4, p3

    .line 766
    goto :goto_f

    .line 769
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #s:Ljava/lang/String;
    :cond_1e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_f
.end method

.method private getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 22
    .parameter "xrp"
    .parameter "attrKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    const-string v16, "code"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v6

    .line 641
    .local v6, keyCode:I
    const-string v16, "label"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 642
    .local v9, keyLabel:Ljava/lang/String;
    const-string v16, "icon"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 643
    .local v7, keyIcon:Landroid/graphics/drawable/Drawable;
    const-string v16, "icon_popup"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 644
    .local v8, keyIconPopup:Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    const-string v17, "popup_skb"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 647
    .local v11, popupSkbId:I
    if-nez v9, :cond_77

    if-nez v7, :cond_77

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getDefaultKeyIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getDefaultKeyIconPopup(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 650
    if-eqz v7, :cond_74

    if-nez v8, :cond_77

    :cond_74
    const/16 v16, 0x0

    .line 697
    :goto_76
    return-object v16

    .line 657
    :cond_77
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    move v10, v0

    .line 658
    .local v10, left:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    move/from16 v16, v0

    add-float v12, v10, v16

    .line 659
    .local v12, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move v15, v0

    .line 660
    .local v15, top:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v16, v0

    add-float v5, v15, v16

    .line 662
    .local v5, bottom:F
    sub-float v16, v12, v10

    const/high16 v17, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_a4

    const/16 v16, 0x0

    goto :goto_76

    .line 663
    :cond_a4
    sub-float v16, v5, v15

    const/high16 v17, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_b7

    const/16 v16, 0x0

    goto :goto_76

    .line 668
    :cond_b7
    const/4 v14, 0x0

    .line 669
    .local v14, toggleKey:Z
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    .line 670
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f1

    .line 674
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mAttrTmp:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mAttrTmp:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "toggle_state"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_f1

    .line 676
    const/4 v14, 0x1

    .line 679
    :cond_f1
    if-eqz v14, :cond_119

    .line 680
    new-instance v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    invoke-direct {v13}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;-><init>()V

    .line 681
    .local v13, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object v0, v13

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    move-object v14, v0

    .end local v14           #toggleKey:Z
    move-object v0, v13

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getToggleStates(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;I)Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->setToggleStates(Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;)Z

    move-result v16

    if-nez v16, :cond_11e

    .line 683
    const/16 v16, 0x0

    goto/16 :goto_76

    .line 686
    .end local v13           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v14       #toggleKey:Z
    :cond_119
    new-instance v13, Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-direct {v13}, Lcom/google/android/inputmethod/pinyin/SoftKey;-><init>()V

    .line 690
    .end local v14           #toggleKey:Z
    .restart local v13       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_11e
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v16, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v17, v0

    move-object v0, v13

    move v1, v6

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyAttribute(ILjava/lang/String;ZZ)V

    .line 692
    invoke-virtual {v13, v11}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setPopupSkbId(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getKeyType(I)Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyType(Lcom/google/android/inputmethod/pinyin/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 696
    invoke-virtual {v13, v10, v15, v12, v5}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyDimensions(FFFF)V

    move-object/from16 v16, v13

    .line 697
    goto/16 :goto_76
.end method

.method private getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "xrp"
    .parameter "name"
    .parameter "defValue"

    .prologue
    const/4 v2, 0x0

    .line 791
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, resId:I
    if-nez v0, :cond_d

    .line 793
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 795
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

.method private getToggleStates(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;I)Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    .registers 22
    .parameter "attrKey"
    .parameter "softKey"
    .parameter "defKeyCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->mXrp:Landroid/content/res/XmlResourceParser;

    move-object v15, v0

    .line 704
    .local v15, xrp:Landroid/content/res/XmlResourceParser;
    const-string v16, "state_id"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v14

    .line 705
    .local v14, stateId:I
    if-nez v14, :cond_19

    const/16 v16, 0x0

    .line 753
    :goto_18
    return-object v16

    .line 707
    :cond_19
    const-string v16, "label"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getString(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 708
    .local v9, keyLabel:Ljava/lang/String;
    const-string v16, "key_type"

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v10

    .line 710
    .local v10, keyTypeId:I
    if-nez v9, :cond_6b

    .line 711
    const-string v16, "code"

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v8

    .line 715
    .local v8, keyCode:I
    :goto_46
    const-string v16, "icon"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 716
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    const-string v16, "icon_popup"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 717
    .local v7, iconPopup:Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_7b

    if-nez v9, :cond_7b

    .line 718
    const/16 v16, 0x0

    goto :goto_18

    .line 713
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v8           #keyCode:I
    :cond_6b
    const-string v16, "code"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #keyCode:I
    goto :goto_46

    .line 720
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #iconPopup:Landroid/graphics/drawable/Drawable;
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->createToggleState()Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v13

    .line 721
    .local v13, rootState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    invoke-virtual {v13, v14}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->setStateId(I)V

    .line 722
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    .line 723
    const/16 v16, -0x1

    move/from16 v0, v16

    move v1, v10

    if-eq v0, v1, :cond_a2

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getKeyType(I)Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    .line 726
    :cond_a2
    iput v8, v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyCode:I

    .line 727
    iput-object v6, v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 728
    iput-object v7, v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 729
    iput-object v9, v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 731
    const-string v16, "repeat"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v12

    .line 732
    .local v12, repeat:Z
    const-string v16, "balloon"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v5

    .line 733
    .local v5, balloon:Z
    invoke-virtual {v13, v12, v5}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->setStateFlags(ZZ)V

    .line 735
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object v1, v13

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mNextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    .line 738
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    .line 740
    :goto_e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10b

    .line 741
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    goto :goto_e4

    .line 743
    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_134

    .line 744
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, attr:Ljava/lang/String;
    const-string v16, "toggle_state"

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_134

    .line 746
    invoke-direct/range {p0 .. p3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getToggleStates(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;I)Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    move-result-object v11

    .line 748
    .local v11, nextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    if-nez v11, :cond_132

    const/16 v16, 0x0

    goto/16 :goto_18

    .line 749
    :cond_132
    iput-object v11, v13, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;->mNextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;

    .end local v4           #attr:Ljava/lang/String;
    .end local v11           #nextState:Lcom/google/android/inputmethod/pinyin/SoftKeyToggle$ToggleState;
    :cond_134
    move-object/from16 v16, v13

    .line 753
    goto/16 :goto_18
.end method


# virtual methods
.method public loadKeyboard(III)Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .registers 46
    .parameter "resourceId"
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    if-nez v39, :cond_b

    const/16 v39, 0x0

    .line 633
    :goto_a
    return-object v39

    .line 431
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    move-object/from16 v25, v0

    .line 432
    .local v25, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getInstance()Lcom/google/android/inputmethod/pinyin/SkbPool;

    move-result-object v29

    .line 433
    .local v29, skbPool:Lcom/google/android/inputmethod/pinyin/SkbPool;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v38

    .line 434
    .local v38, xrp:Landroid/content/res/XmlResourceParser;
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    .line 435
    const/16 v33, 0x0

    .line 439
    .local v33, softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    const/16 v31, 0x0

    .line 441
    .local v31, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    new-instance v6, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 442
    .local v6, attrDef:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v10, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 443
    .local v10, attrSkb:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v9, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 444
    .local v9, attrRow:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v8, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 445
    .local v8, attrKeys:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v7, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 447
    .local v7, attrKey:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 448
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 449
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    .line 450
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    .line 453
    const/16 v39, 0x0

    :try_start_83
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    .line 454
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    .line 455
    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_9b} :catch_55b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_9b} :catch_54c

    :cond_9b
    move-object/from16 v34, v33

    .line 456
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .local v34, softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :goto_9d
    :try_start_9d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_52d

    .line 457
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4da

    .line 459
    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, attr:Ljava/lang/String;
    const-string v39, "keyboard"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_220

    .line 463
    const/16 v39, 0x0

    const-string v40, "skb_template"

    const/16 v41, 0x0

    invoke-interface/range {v38 .. v41}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v30

    .line 468
    .local v30, skbTemplateId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbPool;->getSkbTemplate(ILandroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v39, v0

    if-eqz v39, :cond_fe

    invoke-virtual {v10, v6}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v39

    if-nez v39, :cond_102

    .line 473
    :cond_fe
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 476
    :cond_102
    const-string v39, "skb_cache_flag"

    sget-boolean v40, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->DEFAULT_SKB_CACHE_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v13

    .line 478
    .local v13, cacheFlag:Z
    const-string v39, "skb_sticky_flag"

    sget-boolean v40, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->DEFAULT_SKB_STICKY_FLAG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v36

    .line 481
    .local v36, stickyFlag:Z
    const-string v39, "qwerty"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 483
    .local v17, isQwerty:Z
    const-string v39, "qwerty_uppercase"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getBoolean(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 486
    .local v18, isQwertyUpperCase:Z
    new-instance v33, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v41, v0

    move-object/from16 v0, v33

    move/from16 v1, p1

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;-><init>(ILcom/google/android/inputmethod/pinyin/SkbTemplate;II)V
    :try_end_163
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_163} :catch_55d
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_163} :catch_551

    .line 488
    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :try_start_163
    move-object/from16 v0, v33

    move v1, v13

    move/from16 v2, v36

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setFlags(ZZZZ)V

    .line 491
    const-string v39, "key_xmargin"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getXMargin()F

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    .line 493
    const-string v39, "key_ymargin"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getYMargin()F

    move-result v40

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    .line 495
    const-string v39, "skb_bg"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 496
    .local v28, skbBg:Landroid/graphics/drawable/Drawable;
    const-string v39, "popup_bg"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 497
    .local v24, popupBg:Landroid/graphics/drawable/Drawable;
    const-string v39, "balloon_bg"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 498
    .local v11, balloonBg:Landroid/graphics/drawable/Drawable;
    if-eqz v28, :cond_1e4

    .line 499
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setSkbBackground(Landroid/graphics/drawable/Drawable;)V

    .line 501
    :cond_1e4
    if-eqz v24, :cond_1ed

    .line 502
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 504
    :cond_1ed
    if-eqz v11, :cond_1f5

    .line 505
    move-object/from16 v0, v33

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 507
    :cond_1f5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v40, v0

    move-object/from16 v0, v33

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setKeyMargins(FF)V

    .line 622
    .end local v5           #attr:Ljava/lang/String;
    .end local v11           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #cacheFlag:Z
    .end local v17           #isQwerty:Z
    .end local v18           #isQwertyUpperCase:Z
    .end local v24           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v28           #skbBg:Landroid/graphics/drawable/Drawable;
    .end local v30           #skbTemplateId:I
    .end local v36           #stickyFlag:Z
    :goto_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    move/from16 v39, v0

    if-nez v39, :cond_9b

    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I
    :try_end_21c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_21c} :catch_55b
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_21c} :catch_54c

    move-object/from16 v34, v33

    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto/16 :goto_9d

    .line 508
    .restart local v5       #attr:Ljava/lang/String;
    :cond_220
    :try_start_220
    const-string v39, "row"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_287

    .line 509
    invoke-virtual {v9, v10}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v39

    if-nez v39, :cond_235

    .line 510
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 513
    :cond_235
    const-string v39, "start_pos_x"

    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 514
    const-string v39, "start_pos_y"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 515
    const-string v39, "row_id"

    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v27

    .line 517
    .local v27, rowId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->beginNewRow(IF)V

    move-object/from16 v33, v34

    .line 518
    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto :goto_20a

    .end local v27           #rowId:I
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_287
    const-string v39, "keys"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_3ce

    .line 519
    if-nez v34, :cond_298

    const/16 v39, 0x0

    goto/16 :goto_a

    .line 520
    :cond_298
    invoke-virtual {v8, v9}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v39

    if-nez v39, :cond_2a2

    .line 521
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 524
    :cond_2a2
    const/16 v39, 0x0

    const-string v40, "splitter"

    invoke-interface/range {v38 .. v40}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 526
    .local v35, splitter:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 527
    const/16 v39, 0x0

    const-string v40, "labels"

    invoke-interface/range {v38 .. v40}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 529
    .local v22, labels:Ljava/lang/String;
    const/16 v39, 0x0

    const-string v40, "codes"

    invoke-interface/range {v38 .. v40}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, codes:Ljava/lang/String;
    if-eqz v35, :cond_2c2

    if-nez v22, :cond_2c6

    .line 532
    :cond_2c2
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 534
    :cond_2c6
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 535
    .local v21, labelArr:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 536
    .local v14, codeArr:[Ljava/lang/String;
    if-eqz v15, :cond_2eb

    .line 537
    move-object v0, v15

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 538
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v39, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v40, v0
    :try_end_2e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_220 .. :try_end_2e1} :catch_55d
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_2e1} :catch_551

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_2eb

    .line 539
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 543
    :cond_2eb
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v32, v31

    .end local v31           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .local v32, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :goto_2ef
    :try_start_2ef
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v16

    move/from16 v1, v39

    if-ge v0, v1, :cond_3c8

    .line 544
    new-instance v31, Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-direct/range {v31 .. v31}, Lcom/google/android/inputmethod/pinyin/SoftKey;-><init>()V
    :try_end_2ff
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ef .. :try_end_2ff} :catch_561
    .catch Ljava/io/IOException; {:try_start_2ef .. :try_end_2ff} :catch_555

    .line 545
    .end local v32           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v31       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    const/16 v19, 0x0

    .line 546
    .local v19, keyCode:I
    if-eqz v14, :cond_30d

    .line 547
    :try_start_303
    aget-object v39, v14, v16

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 549
    :cond_30d
    aget-object v39, v21, v16

    move-object v0, v8

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->repeat:Z

    move/from16 v40, v0

    move-object v0, v8

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->balloon:Z

    move/from16 v41, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyAttribute(ILjava/lang/String;ZZ)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v39, v0

    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyType:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getKeyType(I)Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyType(Lcom/google/android/inputmethod/pinyin/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v23, v0

    .line 558
    .local v23, left:F
    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyWidth:F

    move/from16 v39, v0

    add-float v26, v23, v39

    .line 559
    .local v26, right:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v37, v0

    .line 560
    .local v37, top:F
    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v39, v0

    add-float v12, v37, v39

    .line 562
    .local v12, bottom:F
    sub-float v39, v26, v23

    const/high16 v40, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXMargin:F

    move/from16 v41, v0

    mul-float v40, v40, v41

    cmpg-float v39, v39, v40

    if-gez v39, :cond_372

    const/16 v39, 0x0

    goto/16 :goto_a

    .line 563
    :cond_372
    sub-float v39, v12, v37

    const/high16 v40, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYMargin:F

    move/from16 v41, v0

    mul-float v40, v40, v41

    cmpg-float v39, v39, v40

    if-gez v39, :cond_386

    const/16 v39, 0x0

    goto/16 :goto_a

    .line 565
    :cond_386
    move-object/from16 v0, v31

    move/from16 v1, v23

    move/from16 v2, v37

    move/from16 v3, v26

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setKeyDimensions(FFFF)V

    .line 566
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->addSoftKey(Lcom/google/android/inputmethod/pinyin/SoftKey;)Z

    .line 567
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_3c2

    .line 569
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 543
    :cond_3c2
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v32, v31

    .end local v31           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v32       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    goto/16 :goto_2ef

    .end local v12           #bottom:F
    .end local v19           #keyCode:I
    .end local v23           #left:F
    .end local v26           #right:F
    .end local v37           #top:F
    :cond_3c8
    move-object/from16 v31, v32

    .end local v32           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v31       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v33, v34

    .line 572
    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto/16 :goto_20a

    .end local v14           #codeArr:[Ljava/lang/String;
    .end local v15           #codes:Ljava/lang/String;
    .end local v16           #i:I
    .end local v21           #labelArr:[Ljava/lang/String;
    .end local v22           #labels:Ljava/lang/String;
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .end local v35           #splitter:Ljava/lang/String;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_3ce
    const-string v39, "key"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_4d6

    .line 573
    if-nez v34, :cond_3df

    .line 574
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 576
    :cond_3df
    invoke-virtual {v7, v9}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v39

    if-nez v39, :cond_3e9

    .line 577
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 580
    :cond_3e9
    const-string v39, "start_pos_x"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 581
    const-string v39, "start_pos_y"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v39

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 582
    const-string v39, "id"

    const/16 v40, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 583
    .local v20, keyId:I
    if-ltz v20, :cond_443

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getDefaultKey(I)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v31

    .line 588
    :goto_43d
    if-nez v31, :cond_44d

    const/16 v39, 0x0

    goto/16 :goto_a

    .line 586
    :cond_443
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v31

    goto :goto_43d

    .line 591
    :cond_44d
    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    move/from16 v39, v0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_47c

    .line 593
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 600
    :cond_47c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4cf

    .line 601
    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 602
    const-string v39, "row"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_4cf

    .line 603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v40, v0

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 604
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4cf

    .line 605
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 609
    :cond_4cf
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->addSoftKey(Lcom/google/android/inputmethod/pinyin/SoftKey;)Z

    .end local v5           #attr:Ljava/lang/String;
    .end local v20           #keyId:I
    :cond_4d6
    move-object/from16 v33, v34

    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto/16 :goto_20a

    .line 611
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :cond_4da
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_4d6

    .line 612
    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 613
    .restart local v5       #attr:Ljava/lang/String;
    const-string v39, "row"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v39

    if-nez v39, :cond_4d6

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->keyHeight:F

    move/from16 v40, v0

    add-float v39, v39, v40

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    mul-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4d6

    .line 616
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 624
    .end local v5           #attr:Ljava/lang/String;
    :cond_52d
    invoke-interface/range {v38 .. v38}, Landroid/content/res/XmlResourceParser;->close()V

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbWidth:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbHeight:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->setSkbCoreSize(II)V

    .line 626
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->loadBiasPref()V
    :try_end_548
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_303 .. :try_end_548} :catch_55d
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_548} :catch_551

    move-object/from16 v39, v34

    .line 627
    goto/16 :goto_a

    .line 630
    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :catch_54c
    move-exception v39

    .line 633
    :goto_54d
    const/16 v39, 0x0

    goto/16 :goto_a

    .line 630
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :catch_551
    move-exception v39

    move-object/from16 v33, v34

    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto :goto_54d

    .end local v31           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v5       #attr:Ljava/lang/String;
    .restart local v14       #codeArr:[Ljava/lang/String;
    .restart local v15       #codes:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v21       #labelArr:[Ljava/lang/String;
    .restart local v22       #labels:Ljava/lang/String;
    .restart local v32       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v35       #splitter:Ljava/lang/String;
    :catch_555
    move-exception v39

    move-object/from16 v31, v32

    .end local v32           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v31       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v33, v34

    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto :goto_54d

    .line 628
    .end local v5           #attr:Ljava/lang/String;
    .end local v14           #codeArr:[Ljava/lang/String;
    .end local v15           #codes:Ljava/lang/String;
    .end local v16           #i:I
    .end local v21           #labelArr:[Ljava/lang/String;
    .end local v22           #labels:Ljava/lang/String;
    .end local v35           #splitter:Ljava/lang/String;
    :catch_55b
    move-exception v39

    goto :goto_54d

    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    :catch_55d
    move-exception v39

    move-object/from16 v33, v34

    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto :goto_54d

    .end local v31           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v33           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v5       #attr:Ljava/lang/String;
    .restart local v14       #codeArr:[Ljava/lang/String;
    .restart local v15       #codes:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v21       #labelArr:[Ljava/lang/String;
    .restart local v22       #labels:Ljava/lang/String;
    .restart local v32       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v34       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v35       #splitter:Ljava/lang/String;
    :catch_561
    move-exception v39

    move-object/from16 v31, v32

    .end local v32           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .restart local v31       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v33, v34

    .end local v34           #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    .restart local v33       #softKeyboard:Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
    goto :goto_54d
.end method

.method public loadSkbTemplate(I)Lcom/google/android/inputmethod/pinyin/SkbTemplate;
    .registers 34
    .parameter "resourceId"

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    if-nez p1, :cond_d

    .line 329
    :cond_a
    const/16 v30, 0x0

    .line 426
    :goto_c
    return-object v30

    .line 331
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    .line 332
    .local v24, r:Landroid/content/res/Resources;
    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v28

    .line 334
    .local v28, xrp:Landroid/content/res/XmlResourceParser;
    new-instance v4, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 335
    .local v4, attrDef:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v5, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;-><init>(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;Landroid/content/res/XmlResourceParser;)V

    .line 337
    .local v5, attrKey:Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;
    new-instance v30, Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    .line 338
    const/16 v22, -0x1

    .line 339
    .local v22, lastKeyTypeId:I
    const/4 v12, 0x0

    .line 340
    .local v12, globalColor:I
    const/4 v14, 0x0

    .line 341
    .local v14, globalColorHl:I
    const/4 v13, 0x0

    .line 343
    .local v13, globalColorBalloon:I
    :try_start_43
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    .line 344
    :cond_4d
    :goto_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2b2

    .line 345
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_129

    .line 347
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, attribute:Ljava/lang/String;
    const-string v30, "skb_template"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_142

    .line 349
    const-string v30, "skb_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 350
    .local v25, skbBg:Landroid/graphics/drawable/Drawable;
    const-string v30, "balloon_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 352
    .local v7, balloonBg:Landroid/graphics/drawable/Drawable;
    const-string v30, "popup_bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 354
    .local v23, popupBg:Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_b6

    if-eqz v7, :cond_b6

    if-nez v23, :cond_ba

    .line 356
    :cond_b6
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 358
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    move-object v2, v7

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->setBackgrounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 360
    const-string v30, "key_xmargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v27

    .line 361
    .local v27, xMargin:F
    const-string v30, "key_ymargin"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v29

    .line 362
    .local v29, yMargin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->setMargins(FF)V

    .line 365
    const-string v30, "color"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v12

    .line 366
    const-string v30, "color_highlight"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v14

    .line 368
    const-string v30, "color_balloon"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v13

    .line 417
    .end local v6           #attribute:Ljava/lang/String;
    .end local v7           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v23           #popupBg:Landroid/graphics/drawable/Drawable;
    .end local v25           #skbBg:Landroid/graphics/drawable/Drawable;
    .end local v27           #xMargin:F
    .end local v29           #yMargin:F
    :cond_129
    :goto_129
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mNextEventFetched:Z

    move/from16 v30, v0

    if-nez v30, :cond_4d

    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mXmlEventType:I

    goto/16 :goto_4d

    .line 421
    :catch_13d
    move-exception v30

    .line 426
    :goto_13e
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 370
    .restart local v6       #attribute:Ljava/lang/String;
    :cond_142
    const-string v30, "key_type"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_1e0

    .line 371
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v18

    .line 372
    .local v18, id:I
    const-string v30, "bg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 373
    .local v8, bg:Landroid/graphics/drawable/Drawable;
    const-string v30, "hlbg"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 375
    .local v15, hlBg:Landroid/graphics/drawable/Drawable;
    const-string v30, "color"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v9

    .line 376
    .local v9, color:I
    const-string v30, "color_highlight"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v11

    .line 378
    .local v11, colorHl:I
    const-string v30, "color_balloon"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getColor(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v10

    .line 380
    .local v10, colorBalloon:I
    add-int/lit8 v30, v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b0

    .line 381
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 383
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v18

    move-object v2, v8

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->createKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/inputmethod/pinyin/SoftKeyType;

    move-result-object v21

    .line 385
    .local v21, keyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;
    move-object/from16 v0, v21

    move v1, v9

    move v2, v11

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKeyType;->setColors(III)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->addKeyType(Lcom/google/android/inputmethod/pinyin/SoftKeyType;)Z

    move-result v30

    if-nez v30, :cond_1dc

    .line 387
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 389
    :cond_1dc
    move/from16 v22, v18

    .line 390
    goto/16 :goto_129

    .end local v8           #bg:Landroid/graphics/drawable/Drawable;
    .end local v9           #color:I
    .end local v10           #colorBalloon:I
    .end local v11           #colorHl:I
    .end local v15           #hlBg:Landroid/graphics/drawable/Drawable;
    .end local v18           #id:I
    .end local v21           #keyType:Lcom/google/android/inputmethod/pinyin/SoftKeyType;
    :cond_1e0
    const-string v30, "key_icon"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_235

    .line 391
    const-string v30, "code"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v19

    .line 392
    .local v19, keyCode:I
    const-string v30, "icon"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 393
    .local v16, icon:Landroid/graphics/drawable/Drawable;
    const-string v30, "icon_popup"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getDrawable(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 395
    .local v17, iconPopup:Landroid/graphics/drawable/Drawable;
    if-eqz v16, :cond_129

    if-eqz v17, :cond_129

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->addDefaultKeyIcons(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_129

    .line 423
    .end local v6           #attribute:Ljava/lang/String;
    .end local v16           #icon:Landroid/graphics/drawable/Drawable;
    .end local v17           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v19           #keyCode:I
    :catch_232
    move-exception v30

    goto/16 :goto_13e

    .line 399
    .restart local v6       #attribute:Ljava/lang/String;
    :cond_235
    const-string v30, "key"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v30

    if-nez v30, :cond_129

    .line 400
    const-string v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getInteger(Landroid/content/res/XmlResourceParser;Ljava/lang/String;I)I

    move-result v20

    .line 401
    .local v20, keyId:I
    const/16 v30, -0x1

    move/from16 v0, v30

    move/from16 v1, v20

    if-ne v0, v1, :cond_25c

    const/16 v30, 0x0

    goto/16 :goto_c

    .line 403
    :cond_25c
    invoke-virtual {v5, v4}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;->getAttributes(Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Z

    move-result v30

    if-nez v30, :cond_266

    .line 404
    const/16 v30, 0x0

    goto/16 :goto_c

    .line 408
    :cond_266
    const-string v30, "start_pos_x"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyXPos:F

    .line 409
    const-string v30, "start_pos_y"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getFloat(Landroid/content/res/XmlResourceParser;Ljava/lang/String;F)F

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mKeyYPos:F

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->getSoftKey(Landroid/content/res/XmlResourceParser;Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader$KeyCommonAttributes;)Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-result-object v26

    .line 412
    .local v26, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    if-nez v26, :cond_2a1

    const/16 v30, 0x0

    goto/16 :goto_c

    .line 413
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->addDefaultKey(ILcom/google/android/inputmethod/pinyin/SoftKey;)V

    goto/16 :goto_129

    .line 419
    .end local v6           #attribute:Ljava/lang/String;
    .end local v20           #keyId:I
    .end local v26           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_2b2
    invoke-interface/range {v28 .. v28}, Landroid/content/res/XmlResourceParser;->close()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/XmlKeyboardLoader;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    move-object/from16 v30, v0
    :try_end_2bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_2bb} :catch_13d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_2bb} :catch_232

    goto/16 :goto_c
.end method
