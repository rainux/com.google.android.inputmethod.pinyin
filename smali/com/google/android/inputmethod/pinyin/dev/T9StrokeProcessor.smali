.class public Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.source "T9StrokeProcessor.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;


# static fields
.field public static final CODE_COMMA:I = 0x1c

.field public static final CODE_COMPOSE:I = 0x19

.field public static final CODE_EXCLAMATION:I = 0x1b

.field public static final CODE_PERIOD:I = 0x1e

.field public static final CODE_QUESTION_MARK:I = 0x1a

.field public static final CODE_SPACE:I = 0x1d

.field public static final LAST_CODE:I = 0x1e

.field private static final SMART_KEY_INDEX:I = 0x9

.field public static final START_CODE:I = 0x19


# instance fields
.field final KEY_ANY:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_EXCLAMATION:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_H:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_N:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_P:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_QUESTION_MARK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_S:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_Z:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

.field final mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 9
    .parameter "ime"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/4 v2, 0x5

    const-string v3, "1"

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_H:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 33
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/4 v2, 0x6

    const-string v3, "2"

    const/16 v4, 0x15

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_S:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 35
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/4 v2, 0x7

    const-string v3, "3"

    const/16 v4, 0x16

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_P:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 37
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/16 v2, 0x8

    const-string v3, "4"

    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_N:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 39
    const/16 v0, 0x19

    const/16 v1, 0x9

    const-string v2, "5"

    const/16 v3, 0x37

    const/16 v4, 0x38

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_Z:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 42
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x19

    const/16 v2, 0xa

    const-string v3, "6"

    const/16 v4, 0x19

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_ANY:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 45
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1a

    const/16 v2, 0xb

    const-string v3, "7"

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\uff1f"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_QUESTION_MARK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 48
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1b

    const/16 v2, 0xc

    const-string v3, "8"

    const/16 v4, 0x33

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\uff01"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_EXCLAMATION:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 51
    const/16 v0, 0x19

    const/16 v1, 0xd

    const-string v2, "9"

    const/16 v3, 0x1c

    const/16 v4, 0x1d

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 55
    const/16 v0, 0x1c

    const/16 v1, 0xe

    const-string v2, "*"

    const/16 v3, 0x3f

    const/16 v4, 0x40

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 59
    const/16 v0, 0x1d

    const/16 v1, 0xf

    const-string v2, "0"

    const/16 v3, 0x16

    const/16 v4, 0x17

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 63
    const/16 v0, 0x1e

    const/16 v1, 0x10

    const-string v2, "#"

    const/16 v3, 0x3d

    const/16 v4, 0x3e

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\u3002"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 69
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_H:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_S:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_P:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_STROKE_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_N:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_Z:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_ANY:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_QUESTION_MARK:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_EXCLAMATION:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 80
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;-><init>(Lcom/google/android/inputmethod/pinyin/IDecoder;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    .line 81
    return-void
.end method

.method private doPrediction()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 212
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 213
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->clear()V

    .line 214
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionChinese()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 215
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 218
    .local v2, prefix:Ljava/lang/CharSequence;
    :try_start_17
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictsNum(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, total:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictList(II)Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->setPrediction(Ljava/util/List;)V

    .line 221
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_37} :catch_38

    .line 228
    .end local v0           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #prefix:Ljava/lang/CharSequence;
    .end local v3           #total:I
    :goto_37
    return-void

    .line 222
    .restart local v2       #prefix:Ljava/lang/CharSequence;
    :catch_38
    move-exception v4

    move-object v1, v4

    .line 223
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37

    .line 226
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #prefix:Ljava/lang/CharSequence;
    :cond_3e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->resetCandidateWindow()Z

    goto :goto_37
.end method

.method private doSearch(C)V
    .registers 9
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    .line 127
    if-nez p1, :cond_29

    .line 128
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->delete()I

    move-result v0

    .line 134
    .local v0, candCount:I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->setSuggestion(Ljava/util/List;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_30

    .line 139
    .end local v1           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_18
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V

    .line 140
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->translateComposingText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 141
    return-void

    .line 130
    .end local v0           #candCount:I
    :cond_29
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->append(C)I

    move-result v0

    .restart local v0       #candCount:I
    goto :goto_9

    .line 136
    :catch_30
    move-exception v3

    move-object v2, v3

    .line 137
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method

.method private reset()V
    .registers 4

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imResetSearch()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_14

    .line 122
    :goto_9
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->clear()V

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 124
    return-void

    .line 118
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method private translateComposingText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .parameter "text"

    .prologue
    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 145
    const-string v1, ""

    .line 155
    :goto_8
    return-object v1

    .line 149
    :cond_9
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_50

    .line 150
    const/16 v0, 0x4e5b

    .line 155
    .local v0, targetChar:C
    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x41

    const/16 v3, 0x4e00

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    const/16 v3, 0x4e28

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x43

    const/16 v3, 0x4e3f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x44

    const/16 v3, 0x4e36

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x46

    const/16 v3, 0x3f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x47

    const/16 v3, 0x2a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 152
    .end local v0           #targetChar:C
    :cond_50
    const/16 v0, 0x4e59

    .restart local v0       #targetChar:C
    goto :goto_15
.end method


# virtual methods
.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 4

    .prologue
    const/16 v2, 0x9

    .line 203
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    .line 208
    :goto_10
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0

    .line 206
    :cond_13
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_CLEAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    goto :goto_10
.end method

.method public onCandidateTouched(ILjava/lang/String;)V
    .registers 10
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    .line 232
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 235
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->commitText(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->doPrediction()V

    .line 258
    :cond_f
    :goto_f
    return-void

    .line 239
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 242
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->chooseCandidate(ILjava/lang/String;)I

    move-result v0

    .line 243
    .local v0, candCount:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isAllChosen()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 244
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->commitText(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->doPrediction()V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    goto :goto_f

    .line 250
    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->setSuggestion(Ljava/util/List;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_47} :catch_5b

    .line 255
    .end local v1           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_47
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V

    .line 256
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->translateComposingText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    goto :goto_f

    .line 252
    :catch_5b
    move-exception v3

    move-object v2, v3

    .line 253
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_47
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 8
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 87
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v1, v2

    .line 90
    :try_start_b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V

    .line 91
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getFaultTolerance()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSetStrokeFaultTolerance(Z)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_22} :catch_26

    .line 96
    :goto_22
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->reset()V

    .line 98
    return-void

    .line 92
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 7
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 162
    packed-switch p1, :pswitch_data_4c

    .line 198
    :cond_4
    :pswitch_4
    invoke-super {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onKey(ILjava/lang/Object;)V

    .line 199
    .end local p2
    :cond_7
    :goto_7
    return-void

    .line 164
    .restart local p2
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, c:C
    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->doSearch(C)V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 169
    .end local v0           #c:C
    .restart local p2
    :pswitch_15
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    move-result v1

    .line 170
    .local v1, submitted:Z
    if-nez v1, :cond_7

    .line 178
    .end local v1           #submitted:Z
    :pswitch_1d
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    .line 179
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->commitText(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->reset()V

    goto :goto_7

    .line 183
    .restart local p2
    :pswitch_2b
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 184
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->doSearch(C)V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 190
    :pswitch_3a
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->reset()V

    .line 192
    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 162
    :pswitch_data_4c
    .packed-switch 0x15
        :pswitch_2b
        :pswitch_3a
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_15
        :pswitch_1d
    .end packed-switch
.end method

.method public onRelease()V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onRelease()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->reset()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V

    .line 105
    return-void
.end method

.method public onReset()V
    .registers 2

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onReset()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->reset()V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->showCandidateWindow(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9StrokeProcessor;->updateSoftKeyboard()V

    .line 113
    return-void
.end method
