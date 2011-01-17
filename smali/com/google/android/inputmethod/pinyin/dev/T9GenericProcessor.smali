.class public Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;
.source "T9GenericProcessor.java"


# static fields
.field public static final CODE_0:I = 0x1

.field public static final CODE_1:I = 0x2

.field public static final CODE_2:I = 0x3

.field public static final CODE_3:I = 0x4

.field public static final CODE_4:I = 0x5

.field public static final CODE_5:I = 0x6

.field public static final CODE_6:I = 0x7

.field public static final CODE_7:I = 0x8

.field public static final CODE_8:I = 0x9

.field public static final CODE_9:I = 0xa

.field public static final CODE_DATA:I = 0x18

.field public static final CODE_DEL:I = 0x15

.field public static final CODE_DIGIT:I = 0x10

.field public static final CODE_EN:I = 0xf

.field public static final CODE_ENTER:I = 0x16

.field public static final CODE_LAYOUT:I = 0x17

.field public static final CODE_PINYIN:I = 0xd

.field public static final CODE_POUND:I = 0xc

.field public static final CODE_SETTING:I = 0x14

.field public static final CODE_SMILEY:I = 0x12

.field public static final CODE_STAR:I = 0xb

.field public static final CODE_STROKE:I = 0xe

.field public static final CODE_SYMBOL:I = 0x11

.field public static final CODE_VOICE:I = 0x13

.field public static final LAST_CODE:I = 0x18

.field public static final PREDICT_MAX_LEN:I = 0x8

.field public static final PREDICT_PREFIX_MAX_LEN:I = 0x3

.field public static final START_CODE:I = 0x1


# instance fields
.field final KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_ABC_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_CLEAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DIGIT_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DONE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_ENTER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_GO:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_NEXT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PINYIN_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SEARCH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SEND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_STROKE_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SYMBOL_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_VOICE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field mRealEnter:Z


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 16
    .parameter "ime"

    .prologue
    const/16 v13, 0x16

    const/16 v12, 0x12

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 173
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 60
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_PINYIN_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 64
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0xe

    const/4 v8, 0x2

    const/4 v9, 0x3

    move v7, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 68
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0xe

    const/4 v8, 0x2

    const/4 v9, 0x3

    move v7, v4

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_STROKE_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 72
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0xf

    const/4 v7, 0x2

    move v8, v11

    move v9, v11

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 76
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0xf

    const/4 v7, 0x2

    move v8, v11

    move v9, v11

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_ABC_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 80
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x5

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 84
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0x10

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x5

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_DIGIT_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 88
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0x11

    const/4 v8, 0x6

    const/4 v9, 0x6

    move v7, v11

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 92
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v6, 0x11

    const/4 v8, 0x6

    const/4 v9, 0x6

    move v7, v11

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9SelectedModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SYMBOL_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 96
    const/16 v0, 0x15

    const/16 v1, 0x11

    const/4 v3, 0x7

    const/16 v5, 0x8

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 101
    const/16 v0, 0x9

    const/16 v1, 0xa

    invoke-static {v13, v12, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_ENTER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 104
    const/16 v0, 0x2d

    const/16 v1, 0x2e

    invoke-static {v13, v12, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SEARCH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 107
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x34

    invoke-static {v0, v13, v12, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_NEXT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 110
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x35

    invoke-static {v0, v13, v12, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_GO:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 113
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x37

    invoke-static {v0, v13, v12, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SEND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 116
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x36

    invoke-static {v0, v13, v12, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_DONE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 119
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x42

    invoke-static {v0, v13, v12, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_CLEAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 132
    const/16 v0, 0x13

    const/16 v1, 0x13

    const/16 v3, 0xd

    const/16 v5, 0xe

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_VOICE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 135
    const/16 v0, 0x14

    const/16 v1, 0x13

    const/16 v3, 0x21

    const/16 v5, 0x22

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 138
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->isVoiceInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_206

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_VOICE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    :goto_10f
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 140
    const/16 v0, 0x17

    const/16 v1, 0x14

    const/16 v3, 0xb

    const/16 v5, 0xc

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ControlSoftKeyWithIcon(IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 145
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    const/4 v3, 0x5

    const/16 v5, 0x9

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 147
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v3, 0x6

    const/16 v5, 0xa

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 149
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    const/16 v3, 0xb

    invoke-static {v0, v11, v1, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 151
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    const/16 v3, 0x8

    const/16 v5, 0xc

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 153
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/16 v3, 0x9

    const/16 v5, 0xd

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 155
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    const/16 v3, 0xa

    const/16 v5, 0xe

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 157
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    const/16 v3, 0xb

    const/16 v5, 0xf

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 159
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x9

    const/16 v3, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 161
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    const/16 v3, 0xd

    const/16 v5, 0x11

    invoke-static {v0, v1, v3, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 163
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xf

    const/16 v3, 0x8

    invoke-static {v0, v4, v1, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 165
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    const/16 v3, 0xe

    const/16 v4, 0x25

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 167
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    const/16 v3, 0x10

    const/16 v4, 0x26

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 170
    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mRealEnter:Z

    .line 174
    return-void

    .line 138
    :cond_206
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto/16 :goto_10f
.end method

.method private isVoiceInputEnabled()Z
    .registers 4

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, userPref:Z
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 265
    :cond_b
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 8
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 179
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mRealEnter:Z

    .line 180
    iget v2, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 182
    .local v0, action:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 183
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_GO:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 199
    :cond_14
    :goto_14
    return-void

    .line 184
    :cond_15
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1d

    .line 185
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SEARCH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_14

    .line 186
    :cond_1d
    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    .line 187
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SEARCH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_14

    .line 188
    :cond_25
    const/4 v2, 0x5

    if-ne v0, v2, :cond_38

    .line 189
    iget v2, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v1, v2, v3

    .line 190
    .local v1, f:I
    const/high16 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 191
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_NEXT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_14

    .line 193
    .end local v1           #f:I
    :cond_38
    const/4 v2, 0x6

    if-ne v0, v2, :cond_40

    .line 194
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_DONE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    goto :goto_14

    .line 196
    :cond_40
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_ENTER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mRealEnter:Z

    goto :goto_14
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 6
    .parameter "key"
    .parameter "data"

    .prologue
    const-string v2, "\n"

    .line 203
    packed-switch p1, :pswitch_data_5c

    .line 239
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 205
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    goto :goto_5

    .line 208
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    goto :goto_5

    .line 211
    :pswitch_14
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    goto :goto_5

    .line 214
    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    goto :goto_5

    .line 217
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchTo(I)V

    goto :goto_5

    .line 220
    :pswitch_29
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->resetCandidateWindow()Z

    move-result v0

    if-nez v0, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->backspace()V

    goto :goto_5

    .line 225
    :pswitch_35
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mRealEnter:Z

    if-eqz v0, :cond_3f

    .line 226
    const-string v0, "\n"

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->commitText(Ljava/lang/String;)V

    goto :goto_5

    .line 228
    :cond_3f
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->filterResultText(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->sendEnterEvent()V

    goto :goto_5

    .line 233
    :pswitch_50
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->switchToQwerty()V

    goto :goto_5

    .line 236
    :pswitch_56
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->showOptionMenu()V

    goto :goto_5

    .line 203
    :pswitch_data_5c
    .packed-switch 0xd
        :pswitch_6
        :pswitch_d
        :pswitch_14
        :pswitch_1b
        :pswitch_22
        :pswitch_5
        :pswitch_5
        :pswitch_56
        :pswitch_29
        :pswitch_35
        :pswitch_50
    .end packed-switch
.end method

.method public onLongPress(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "data"

    .prologue
    .line 243
    const/4 v0, 0x1

    if-lt p1, v0, :cond_15

    const/16 v0, 0xc

    if-gt p1, v0, :cond_15

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 244
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    .line 245
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->commitText(Ljava/lang/String;)V

    .line 247
    :cond_15
    return-void
.end method

.method public onRelease()V
    .registers 1

    .prologue
    .line 251
    return-void
.end method
