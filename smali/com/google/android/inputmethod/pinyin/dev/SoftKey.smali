.class public Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
.super Ljava/lang/Object;
.source "SoftKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    }
.end annotation


# static fields
.field public static final FLAG_DISALBED:I = 0x10

.field public static final FLAG_HIGH_LIGHT:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x2

.field public static final FLAG_POPUP_ABS_POS:I = 0x1

.field public static final FLAG_REPEAT:I = 0x8


# instance fields
.field background:I

.field code:I

.field data:Ljava/lang/Object;

.field flags:I

.field highlightBackground:I

.field highlightIcon:I

.field highlightLabel:Ljava/lang/Object;

.field highlightLabelStyle:I

.field icon:I

.field label:Ljava/lang/Object;

.field labelStyle:I

.field longPressKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field mFooter:Ljava/lang/String;

.field popupBackground:I

.field popupIcon:I

.field popupLabel:Ljava/lang/Object;

.field popupLabelStyle:I

.field popupRect:Ljava/lang/Object;

.field rect:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V
    .registers 21
    .parameter "code"
    .parameter "data"
    .parameter "layout"
    .parameter "popup"
    .parameter "flags"
    .parameter "bg"
    .parameter "icon"
    .parameter "label"
    .parameter "style"
    .parameter "bg2"
    .parameter "icon2"
    .parameter "label2"
    .parameter "style2"
    .parameter "bg3"
    .parameter "icon3"
    .parameter "label3"
    .parameter "style3"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->mFooter:Ljava/lang/String;

    .line 83
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->code:I

    .line 84
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    .line 85
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->rect:Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupRect:Ljava/lang/Object;

    .line 87
    iput p5, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    .line 88
    iput p6, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->background:I

    .line 89
    iput p7, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->icon:I

    .line 90
    iput-object p8, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->label:Ljava/lang/Object;

    .line 91
    iput p9, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->labelStyle:I

    .line 92
    iput p10, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightBackground:I

    .line 93
    iput p11, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightIcon:I

    .line 94
    iput-object p12, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabel:Ljava/lang/Object;

    .line 95
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabelStyle:I

    .line 96
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupBackground:I

    .line 97
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupIcon:I

    .line 98
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabel:Ljava/lang/Object;

    .line 99
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabelStyle:I

    .line 100
    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "d"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->data:Ljava/lang/Object;

    .line 114
    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "f"

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->flags:I

    .line 104
    return-object p0
.end method

.method public setFooterText(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "text"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->mFooter:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "l"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->label:Ljava/lang/Object;

    .line 109
    return-object p0
.end method

.method public setLongPressKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2
    .parameter "key"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->longPressKey:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 119
    return-object p0
.end method
