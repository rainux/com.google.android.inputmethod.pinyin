.class public Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.source "T9LatinProcessor.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor$1;
    }
.end annotation


# static fields
.field static final BUTTONS_PER_ROW:I = 0x4

.field static final CL_KEY_INDEX:I = 0xe

.field public static final CODE_AT:I = 0x1c

.field public static final CODE_COMMA:I = 0x1a

.field public static final CODE_COMPOSE:I = 0x19

.field public static final CODE_PERIOD:I = 0x1e

.field public static final CODE_SELECT_LATIN:I = 0x1f

.field public static final CODE_SLASH:I = 0x1b

.field public static final CODE_SPACE:I = 0x1d

.field public static final LAST_CODE:I = 0x1f

.field private static final NUM_KEY_INDEX:I = 0x4

.field static final SMART_KEY_INDEX:I = 0x12

.field public static final START_CODE:I = 0x19


# instance fields
.field final KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_ABC2_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_AT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DEF3_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_GHI4_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_JKL5_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_LATIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_LATIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_LATIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_LATIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_LATIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_MNO6_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PQRS7_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SHIFT_ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SHIFT_CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SHIFT_ORIGINAL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SLASH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_TUV8_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_WXYZ9_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

.field mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mUsePrediction:Z


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 15
    .parameter "ime"

    .prologue
    const/4 v1, 0x5

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/16 v0, 0x19

    const/4 v8, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 38
    const-string v2, "1"

    const/16 v3, 0x33

    const/16 v4, 0x34

    const/16 v5, 0x2f

    const/16 v6, 0x9c

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IIIILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ORIGINAL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 42
    const-string v2, "1"

    const/16 v3, 0x33

    const/16 v4, 0x34

    const/16 v5, 0x30

    const/16 v6, 0x9d

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IIIILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 46
    const-string v2, "1"

    const/16 v3, 0x31

    const/16 v4, 0x32

    const/16 v5, 0x30

    const/16 v6, 0x9d

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IIIILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 50
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    const-string v5, "2"

    const/16 v6, 0x27

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 52
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/4 v4, 0x7

    const-string v5, "3"

    const/16 v6, 0x28

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 54
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const-string v5, "4"

    const/16 v6, 0x29

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 56
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x9

    const-string v5, "5"

    const/16 v6, 0x2a

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 58
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    const-string v5, "6"

    const/16 v6, 0x2b

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 60
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    const-string v5, "7"

    const/16 v6, 0x2c

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 62
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    const-string v5, "8"

    const/16 v6, 0x2d

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 64
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xd

    const-string v5, "9"

    const/16 v6, 0x2e

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "9"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 66
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/4 v4, 0x6

    const-string v5, "2"

    const/16 v6, 0x38

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC2_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 69
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/4 v4, 0x7

    const-string v5, "3"

    const/16 v6, 0x39

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEF3_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 72
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x8

    const-string v5, "4"

    const/16 v6, 0x3a

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_GHI4_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 75
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x9

    const-string v5, "5"

    const/16 v6, 0x3b

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_JKL5_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 78
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xa

    const-string v5, "6"

    const/16 v6, 0x3c

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_MNO6_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 81
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xb

    const-string v5, "7"

    const/16 v6, 0x3d

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PQRS7_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 84
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    const-string v5, "8"

    const/16 v6, 0x3e

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_TUV8_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 87
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0xd

    const-string v5, "9"

    const/16 v6, 0x3f

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, "9"

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_WXYZ9_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 91
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v3, 0x1a

    const/16 v4, 0xe

    const-string v5, "*"

    const/16 v6, 0x1d

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 93
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v3, 0x1b

    const/16 v4, 0xe

    const-string v5, "*"

    const/16 v6, 0x40

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SLASH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 95
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v3, 0x1c

    const/16 v4, 0xe

    const-string v5, "*"

    const/16 v6, 0x41

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_AT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 98
    const/16 v2, 0x1d

    const/16 v3, 0xf

    const-string v4, "0"

    const/16 v5, 0x16

    const/16 v6, 0x17

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v2 .. v7}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 102
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v3, 0x1e

    const/16 v4, 0x10

    const-string v5, "#"

    const/16 v6, 0x13

    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v2 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 106
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0x1f

    move v10, v9

    move v11, v8

    invoke-static/range {v6 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 108
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x1f

    const/4 v5, 0x1

    move v6, v9

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 110
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x1f

    const/4 v5, 0x2

    move v6, v9

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 112
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x1f

    const/4 v5, 0x3

    move v6, v9

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 114
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mContext:Landroid/content/Context;

    const/16 v4, 0x1f

    const/4 v5, 0x4

    move v6, v9

    move v7, v9

    invoke-static/range {v3 .. v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    .line 132
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v12, v0, v8

    const/4 v2, 0x1

    aput-object v12, v0, v2

    const/4 v2, 0x2

    aput-object v12, v0, v2

    const/4 v2, 0x3

    aput-object v12, v0, v2

    const/4 v2, 0x4

    aput-object v12, v0, v2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ORIGINAL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC2_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEF3_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_GHI4_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_JKL5_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_MNO6_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PQRS7_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_TUV8_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_WXYZ9_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    aput-object v12, v0, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x12

    aput-object v12, v0, v2

    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 142
    new-array v0, v1, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PINYIN:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 144
    new-array v0, v1, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_LATIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 150
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getAutoDictionary()Lcom/android/inputmethod/latin/AutoDictionary;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getUserDictionary()Lcom/android/inputmethod/latin/UserDictionary;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/DefaultT9DictionaryMixer;-><init>(Lcom/android/inputmethod/latin/BinaryDictionary;Lcom/android/inputmethod/latin/ContactsDictionary;Lcom/android/inputmethod/latin/AutoDictionary;Lcom/android/inputmethod/latin/UserDictionary;)V

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v2

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;-><init>(Lcom/google/android/inputmethod/pinyin/dev/T9DictionaryMixer;Lcom/google/android/inputmethod/pinyin/CapitalManager;I)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    .line 156
    return-void
.end method

.method private capitalizeKeys()V
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 269
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 270
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 271
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 274
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 275
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 276
    return-void
.end method

.method private decapitalizeKeys()V
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_ABC2_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_DEF3_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_GHI4_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 282
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_JKL5_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 283
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_MNO6_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 284
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_PQRS7_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 285
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_TUV8_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 286
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_WXYZ9_LOWER:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    .line 287
    return-void
.end method

.method private doSearch()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateShiftState()V

    .line 246
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showCandidateWindow(Z)V

    .line 247
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSuggestions()V

    .line 248
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->formatComposingText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 250
    return-void
.end method

.method private formatComposingText()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    const/high16 v5, -0x100

    .line 229
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 230
    .local v2, str:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getFixedComposingText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->passwordFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 231
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 232
    .local v1, start:I
    if-lez v1, :cond_20

    .line 233
    sget-object v3, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 235
    :cond_20
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getEditedComposingText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->passwordFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 236
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getUnknownComposingText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->passwordFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 237
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 238
    .local v0, end:I
    if-lez v0, :cond_45

    .line 239
    sget-object v3, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 241
    :cond_45
    return-object v2
.end method

.method private passwordFilter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "text"

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 224
    :goto_5
    return-object v0

    :cond_6
    const-string v0, "."

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private prepareSoftKeys()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 386
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getKeyCaptions()[C

    move-result-object v1

    .line 387
    .local v1, latins:[C
    if-nez v1, :cond_41

    .line 388
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    .line 389
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v7

    aput-object v4, v3, v7

    .line 390
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    .line 391
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v9

    aput-object v4, v3, v9

    .line 392
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v10

    aput-object v4, v3, v10

    .line 393
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v3, v4

    .line 413
    :goto_3d
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateShiftState()V

    .line 414
    return-void

    .line 395
    :cond_41
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v4, 0x12

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_CLEAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v3, v4

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, i:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    array-length v2, v3

    .line 398
    .local v2, size:I
    :goto_4d
    array-length v3, v1

    if-ge v0, v3, :cond_72

    .line 399
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v3, v3, v0

    aget-char v4, v1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->setLabelForLatinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 401
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 403
    :cond_72
    :goto_72
    if-ge v0, v2, :cond_89

    .line 404
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->setLabelForLatinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V

    .line 405
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v3, v3, v0

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    .line 407
    :cond_89
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v6

    aput-object v4, v3, v6

    .line 408
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v7

    aput-object v4, v3, v7

    .line 409
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v8

    aput-object v4, v3, v8

    .line 410
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v9

    aput-object v4, v3, v9

    .line 411
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->LATIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v10

    aput-object v4, v3, v10

    goto :goto_3d
.end method

.method private reset()V
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->reset()V

    .line 193
    return-void
.end method

.method private setLabelForLatinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "label"

    .prologue
    .line 380
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->label:Ljava/lang/Object;

    .line 381
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabel:Ljava/lang/Object;

    .line 382
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabel:Ljava/lang/Object;

    .line 383
    return-void
.end method

.method private toggleShiftState()V
    .registers 3

    .prologue
    .line 312
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 323
    :goto_15
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSuggestions()V

    .line 324
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 325
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->formatComposingText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 327
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 328
    return-void

    .line 314
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    goto :goto_15

    .line 317
    :pswitch_38
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    goto :goto_15

    .line 320
    :pswitch_44
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    goto :goto_15

    .line 312
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_38
        :pswitch_44
    .end packed-switch
.end method

.method private translateComposingText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "text"

    .prologue
    const-string v3, ""

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 254
    const-string v2, ""

    move-object v2, v3

    .line 263
    :goto_b
    return-object v2

    .line 258
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetConvertedSplStr()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_18

    move-result-object v1

    .local v1, result:Ljava/lang/String;
    move-object v2, v1

    .line 259
    goto :goto_b

    .line 260
    .end local v1           #result:Ljava/lang/String;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 263
    const-string v2, ""

    move-object v2, v3

    goto :goto_b
.end method

.method private updateShiftState()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 290
    sget-object v0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 309
    :goto_16
    return-void

    .line 292
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ORIGINAL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    .line 293
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->decapitalizeKeys()V

    goto :goto_16

    .line 296
    :pswitch_21
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 297
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ORIGINAL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    .line 298
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->decapitalizeKeys()V

    goto :goto_16

    .line 300
    :cond_33
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    .line 301
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->capitalizeKeys()V

    goto :goto_16

    .line 305
    :pswitch_3d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SHIFT_ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v2

    .line 306
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->capitalizeKeys()V

    goto :goto_16

    .line 290
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_17
        :pswitch_21
        :pswitch_3d
    .end packed-switch
.end method

.method private updateSuggestions()V
    .registers 5

    .prologue
    .line 196
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getCandidates()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 198
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_b
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v1

    .line 199
    .local v1, shiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    sget-object v2, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor$1;->$SwitchMap$com$google$android$inputmethod$pinyin$CapitalManager$ShiftState:[I

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_54

    .line 217
    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->setSuggestion(Ljava/util/List;)V

    .line 218
    return-void

    .line 196
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #shiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    :cond_24
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v2

    goto :goto_b

    .line 201
    .restart local v0       #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #shiftState:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    :pswitch_2b
    sget-object v2, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateFormatter;->formatCandidates(Ljava/util/List;Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)Ljava/util/List;

    move-result-object v0

    .line 203
    goto :goto_20

    .line 205
    :pswitch_32
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getFixedComposingText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_45

    .line 206
    sget-object v2, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateFormatter;->formatCandidates(Ljava/util/List;Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)Ljava/util/List;

    move-result-object v0

    goto :goto_20

    .line 209
    :cond_45
    sget-object v2, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateFormatter;->formatCandidates(Ljava/util/List;Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)Ljava/util/List;

    move-result-object v0

    .line 212
    goto :goto_20

    .line 214
    :pswitch_4c
    sget-object v2, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-static {v0, v2}, Lcom/google/android/inputmethod/pinyin/CandidateFormatter;->formatCandidates(Ljava/util/List;Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)Ljava/util/List;

    move-result-object v0

    goto :goto_20

    .line 199
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_32
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->prepareSoftKeys()V

    .line 419
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method public onCandidateTouched(ILjava/lang/String;)V
    .registers 7
    .parameter "index"
    .parameter "text"

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, toCommit:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_c

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->size()I

    move-result v2

    if-nez v2, :cond_50

    .line 426
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 435
    :goto_10
    if-eqz v1, :cond_1c

    if-eqz v1, :cond_65

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->chooseCandidate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 436
    :cond_1c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getComposingText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->commitText(Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->getShiftState()Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    move-result-object v2

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    if-ne v2, v3, :cond_3e

    .line 439
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCapitalManager()Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;

    move-result-object v2

    sget-object v3, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/PunctuationBasedCapitalManager;->setShiftState(Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;)V

    .line 441
    :cond_3e
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 442
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    if-eqz v2, :cond_4c

    .line 443
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->getHalfMoonSymbolList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->setPrediction(Ljava/util/List;)V

    .line 449
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 450
    return-void

    .line 428
    :cond_50
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 429
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_63

    .line 430
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #toCommit:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #toCommit:Ljava/lang/String;
    goto :goto_10

    .line 432
    :cond_63
    const/4 v1, 0x0

    goto :goto_10

    .line 446
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_65
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSuggestions()V

    .line 447
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->formatComposingText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    goto :goto_4c
.end method

.method public onClick(ILjava/lang/Object;)V
    .registers 5
    .parameter "i"
    .parameter "data"

    .prologue
    .line 453
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getKeyCaptions()[C

    move-result-object v1

    aget-char v1, v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->onCandidateTouched(ILjava/lang/String;)V

    .line 454
    return-void
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 9
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    const/16 v4, 0xe

    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 161
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v1, v2

    .line 162
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 163
    .local v0, variation:I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_2f

    .line 164
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_AT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v1, v4

    .line 170
    :goto_1d
    const/16 v1, 0x80

    if-eq v0, v1, :cond_41

    const/16 v1, 0x90

    if-eq v0, v1, :cond_41

    const/4 v1, 0x1

    :goto_26
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    .line 172
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 174
    return-void

    .line 165
    :cond_2f
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3a

    .line 166
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_SLASH:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v1, v4

    goto :goto_1d

    .line 168
    :cond_3a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v1, v4

    goto :goto_1d

    .line 170
    :cond_41
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 7
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 332
    packed-switch p1, :pswitch_data_7a

    .line 375
    :cond_4
    :pswitch_4
    invoke-super {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onKey(ILjava/lang/Object;)V

    .line 376
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 377
    .end local p2
    :goto_a
    return-void

    .line 334
    .restart local p2
    :pswitch_b
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 335
    .local v0, c:C
    const/16 v2, 0x27

    if-ne v0, v2, :cond_1c

    .line 336
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->toggleShiftState()V

    .line 341
    :goto_18
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    goto :goto_a

    .line 338
    :cond_1c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->addKey(C)Z

    .line 339
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->doSearch()V

    goto :goto_18

    .line 346
    .end local v0           #c:C
    .restart local p2
    :pswitch_25
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 347
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->getComposingText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->commitText(Ljava/lang/String;)V

    .line 348
    iget-boolean v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mUsePrediction:Z

    if-eqz v2, :cond_41

    .line 349
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/dev/T9SymbolList;->getHalfMoonSymbolList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->setPrediction(Ljava/util/List;)V

    .line 352
    :cond_41
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 353
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->commitText(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    goto :goto_a

    .line 357
    .restart local p2
    :pswitch_4d
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->backspace()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->doSearch()V

    .line 359
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    goto :goto_a

    .line 364
    :pswitch_5c
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    .local v1, pyIndex:I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->onClick(ILjava/lang/Object;)V

    goto :goto_a

    .line 368
    .end local v1           #pyIndex:I
    .restart local p2
    :pswitch_67
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->mComposer:Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinComposer;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 369
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 370
    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showCandidateWindow(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    goto :goto_a

    .line 332
    nop

    :pswitch_data_7a
    .packed-switch 0x15
        :pswitch_4d
        :pswitch_67
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_25
        :pswitch_4
        :pswitch_4
        :pswitch_25
        :pswitch_25
        :pswitch_5c
    .end packed-switch
.end method

.method public onRelease()V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->showCandidateWindow(Z)V

    .line 180
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onRelease()V

    .line 181
    return-void
.end method

.method public onReset()V
    .registers 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onReset()V

    .line 186
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->reset()V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9LatinProcessor;->updateSoftKeyboard()V

    .line 188
    return-void
.end method
