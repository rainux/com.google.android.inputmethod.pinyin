.class public Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.source "T9DigitProcessor.java"


# static fields
.field public static final CODE_MINUS:I = 0x19

.field public static final CODE_PERIOD:I = 0x1a

.field public static final LAST_CODE:I = 0x1a

.field static final SMART_KEY_INDEX:I = 0x9

.field public static final START_CODE:I = 0x19


# instance fields
.field public final DIGIT:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

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

.field final KEY_MINUS:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 13
    .parameter "ime"

    .prologue
    const/4 v10, 0x5

    const/4 v6, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/16 v7, 0x8

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1, v10, v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 20
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, v9}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 22
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 24
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-static {v0, v10, v7, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 26
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/16 v2, 0xd

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 28
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    const/16 v2, 0xe

    invoke-static {v0, v1, v9, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 30
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    const/16 v2, 0xf

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v8, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 34
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0xd

    const/16 v2, 0x11

    invoke-static {v0, v9, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9NormalSoftKeyWithLabel(Landroid/content/Context;III)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/16 v2, 0xe

    const-string v3, "*"

    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_MINUS:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 40
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1a

    const/16 v2, 0x10

    const-string v3, "#"

    const/16 v4, 0x13

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 44
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v10

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v7

    const/4 v1, 0x0

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v9

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_DIGIT_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_MINUS:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->DIGIT:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 53
    return-void
.end method


# virtual methods
.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->DIGIT:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 7
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->DIGIT:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 59
    return-void
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 5
    .parameter "key"
    .parameter "data"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_10

    .line 79
    :pswitch_3
    invoke-super {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onKey(ILjava/lang/Object;)V

    .line 80
    .end local p2
    :goto_6
    return-void

    .line 76
    .restart local p2
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9DigitProcessor;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_6

    .line 63
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
