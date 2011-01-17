.class public Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;
.super Ljava/lang/Object;
.source "SoftKeyFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "code"
    .parameter "rect"
    .parameter "icon"
    .parameter "popupIcon"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p1, 0x15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x18

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0x19

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v14, 0xf

    const/16 v16, 0x0

    const/16 v17, -0x1

    move/from16 v1, p0

    move/from16 v7, p2

    move/from16 v11, p2

    move/from16 v15, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method public static createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x18

    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xc

    const/16 v10, 0x19

    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xf

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method public static createT9FooterSoftKeyWithIcon(IILjava/lang/String;IIIILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 28
    .parameter "code"
    .parameter "rect"
    .parameter "footer"
    .parameter "bg"
    .parameter "hlbg"
    .parameter "icon"
    .parameter "popupIcon"
    .parameter "longPressKey"

    .prologue
    .line 144
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 p1, 0x15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1
    move-result-object v6

    const/4 v7, 0x6

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0xf

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v3, p0

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v17, p6

    invoke-direct/range {v2 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setLongPressKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    .end local p0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFooterText(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    return-object p0
.end method

.method public static createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 26
    .parameter "code"
    .parameter "rect"
    .parameter "footer"
    .parameter "icon"
    .parameter "popupIcon"
    .parameter "longPressKey"

    .prologue
    .line 133
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 p1, 0x15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1
    move-result-object v6

    const/4 v7, 0x6

    const/16 v8, 0x1a

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x1b

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0xf

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v3, p0

    move/from16 v9, p3

    move/from16 v13, p3

    move/from16 v17, p4

    invoke-direct/range {v2 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setLongPressKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    .end local p0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFooterText(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    return-object p0
.end method

.method public static createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 27
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "footer"
    .parameter "label"
    .parameter "longPressKey"
    .parameter "smaller"

    .prologue
    .line 153
    new-instance v2, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v6

    const/4 v7, 0x6

    const/16 v8, 0x1a

    const/4 v9, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-eqz p6, :cond_47

    const/16 p0, 0xc

    move/from16 v11, p0

    :goto_1b
    const/16 v12, 0x1b

    const/4 v13, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz p6, :cond_4c

    const/16 p0, 0xf

    move/from16 v15, p0

    :goto_28
    const/16 v16, 0xf

    const/16 v17, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0xa

    move/from16 v3, p1

    invoke-direct/range {v2 .. v19}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setLongPressKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFooterText(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object p0

    return-object p0

    :cond_47
    const/16 p0, 0x3

    move/from16 v11, p0

    goto :goto_1b

    :cond_4c
    const/16 p0, 0x4

    move/from16 v15, p0

    goto :goto_28
.end method

.method public static createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 24
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"
    .parameter "popupLabel"
    .parameter "smaller"

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x47

    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz p5, :cond_37

    const/16 p0, 0xc

    move/from16 v9, p0

    :goto_1b
    const/16 v10, 0x48

    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz p5, :cond_3c

    const/16 p0, 0xc

    move/from16 v13, p0

    :goto_28
    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0

    :cond_37
    const/16 p0, 0x3

    move/from16 v9, p0

    goto :goto_1b

    :cond_3c
    const/16 p0, 0x3

    move/from16 v13, p0

    goto :goto_28
.end method

.method public static createT9NormalSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "code"
    .parameter "rect"
    .parameter "icon"
    .parameter "popupIcon"

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p1, 0x15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x1a

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0x1b

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v14, 0xf

    const/16 v16, 0x0

    const/16 v17, -0x1

    move/from16 v1, p0

    move/from16 v7, p2

    move/from16 v11, p2

    move/from16 v15, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method public static createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x1a

    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    const/16 v10, 0x1b

    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x4

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method public static createT9OnOffControlSoftKeyWithIcon(IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 23
    .parameter "code"
    .parameter "rect"
    .parameter "icon"
    .parameter "popupIcon"
    .parameter "on"

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p1, 0x15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p1
    move-result-object v4

    const/4 v5, 0x4

    if-eqz p4, :cond_3e

    const/16 p1, 0x2b

    move/from16 v6, p1

    :goto_14
    const/16 p1, -0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, -0x1

    if-eqz p4, :cond_43

    const/16 p1, 0x45

    move/from16 v10, p1

    :goto_21
    const/16 p1, -0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, -0x1

    const/16 v14, 0xf

    const/16 p1, -0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, -0x1

    move/from16 v1, p0

    move/from16 v7, p2

    move/from16 v11, p2

    move/from16 v15, p3

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0

    :cond_3e
    const/16 p1, 0x2c

    move/from16 v6, p1

    goto :goto_14

    :cond_43
    const/16 p1, 0x46

    move/from16 v10, p1

    goto :goto_21
.end method

.method public static createT9OnOffControlSoftKeyWithLabel(Landroid/content/Context;IIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 23
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"
    .parameter "on"

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    if-eqz p4, :cond_37

    const/16 p0, 0x2b

    move/from16 v6, p0

    :goto_14
    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xc

    if-eqz p4, :cond_3c

    const/16 p0, 0x45

    move/from16 v10, p0

    :goto_21
    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xf

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0

    :cond_37
    const/16 p0, 0x2c

    move/from16 v6, p0

    goto :goto_14

    :cond_3c
    const/16 p0, 0x46

    move/from16 v10, p0

    goto :goto_21
.end method

.method public static createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 23
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"
    .parameter "popupLabel"

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x18

    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xe

    const/16 v10, 0x19

    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0xe

    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method public static createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 24
    .parameter "context"
    .parameter "code"
    .parameter "rect"
    .parameter "label"
    .parameter "popupLabel"
    .parameter "smaller"

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 p0, 0x15

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p0
    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0x49

    const/4 v7, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz p5, :cond_37

    const/16 p0, 0xd

    move/from16 v9, p0

    :goto_1b
    const/16 v10, 0x4a

    const/4 v11, -0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz p5, :cond_3c

    const/16 p0, 0xd

    move/from16 v13, p0

    :goto_28
    const/16 v14, 0xf

    const/4 v15, -0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0xa

    move/from16 v1, p1

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0

    :cond_37
    const/16 p0, 0x5

    move/from16 v9, p0

    goto :goto_1b

    :cond_3c
    const/16 p0, 0x5

    move/from16 v13, p0

    goto :goto_28
.end method
