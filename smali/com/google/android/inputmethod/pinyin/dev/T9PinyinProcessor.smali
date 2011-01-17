.class public Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;
.super Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;
.source "T9PinyinProcessor.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;
.implements Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;


# static fields
.field static final BUTTONS_PER_ROW:I = 0x4

.field public static final CODE_COMMA:I = 0x1a

.field public static final CODE_COMPOSE:I = 0x19

.field public static final CODE_PERIOD:I = 0x1c

.field public static final CODE_SELECT_MORE:I = 0x1e

.field public static final CODE_SELECT_PINYIN:I = 0x1d

.field public static final CODE_SPACE:I = 0x1b

.field public static final LAST_CODE:I = 0x1e

.field private static final SMART_KEY_INDEX:I = 0xc

.field public static final START_CODE:I = 0x19


# instance fields
.field final KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field KEY_PINYIN_MORE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field final PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

.field private mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

.field mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 16
    .parameter "ime"

    .prologue
    const/4 v13, 0x0

    const/16 v4, 0x1d

    const/16 v0, 0x19

    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;-><init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 37
    const/4 v1, 0x5

    const-string v2, "1"

    const/16 v3, 0x1c

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 40
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v7, 0x6

    const-string v8, "2"

    const/16 v9, 0x38

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 42
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v7, 0x7

    const-string v8, "3"

    const/16 v9, 0x39

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 44
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0x8

    const-string v8, "4"

    const/16 v9, 0x3a

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 46
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0x9

    const-string v8, "5"

    const/16 v9, 0x3b

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 48
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0xa

    const-string v8, "6"

    const/16 v9, 0x3c

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 50
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0xb

    const-string v8, "7"

    const/16 v9, 0x3d

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 52
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0xc

    const-string v8, "8"

    const/16 v9, 0x3e

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 54
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v7, 0xd

    const-string v8, "9"

    const/16 v9, 0x3f

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move v6, v0

    invoke-static/range {v5 .. v11}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithLabel(Landroid/content/Context;IILjava/lang/String;ILcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 56
    const/16 v5, 0x1a

    const/16 v6, 0xe

    const-string v7, "*"

    const/16 v8, 0x3f

    const/16 v9, 0x40

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_STAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\uff0c"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 59
    const/16 v5, 0x1b

    const/16 v6, 0xf

    const-string v7, "0"

    const/16 v8, 0x16

    const/16 v9, 0x17

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_0:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 62
    const/16 v5, 0x1c

    const/16 v6, 0x10

    const-string v7, "#"

    const/16 v8, 0x3d

    const/16 v9, 0x3e

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_POUND:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-static/range {v5 .. v10}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9FooterSoftKeyWithIcon(IILjava/lang/String;IILcom/google/android/inputmethod/pinyin/dev/SoftKey;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    const-string v1, "\u3002"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 67
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v11, v12, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 69
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v4, v1, v12, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 71
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v12, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 73
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v4, v1, v12, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 75
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v4, v1, v12, v12}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9PinyinSpellingSoftKey(Landroid/content/Context;IIII)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 77
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/16 v1, 0x1e

    const/4 v2, 0x4

    const/16 v3, 0x2f

    const/16 v4, 0x2f

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyFactory;->createT9ModeSoftKey(Landroid/content/Context;IIIIZ)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN_MORE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 81
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v13, v0, v11

    const/4 v1, 0x1

    aput-object v13, v0, v1

    const/4 v1, 0x2

    aput-object v13, v0, v1

    const/4 v1, 0x3

    aput-object v13, v0, v1

    const/4 v1, 0x4

    aput-object v13, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PHRASE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_ABC2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_DEF3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_DEL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_GHI4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_JKL5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_MNO6:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PQRS7:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_TUV8:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_WXYZ9:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_VOICE_OR_SETTING:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_COMMA:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_SPACE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PERIOD:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_LAYOUT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN_SELECTED:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v11

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_STROKE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_ABC:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_DIGIT:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_SYMBOL:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN1:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v1, v0, v11

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN2:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN3:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN4:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN5:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 99
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;-><init>(Lcom/google/android/inputmethod/pinyin/IDecoder;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    .line 100
    return-void
.end method

.method private doPrediction()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 344
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 345
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->clear()V

    .line 346
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getPredictionChinese()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 347
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v5, 0x3

    invoke-interface {v4, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 349
    .local v2, prefix:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 367
    .end local v2           #prefix:Ljava/lang/CharSequence;
    :goto_1d
    return-void

    .line 352
    .restart local v2       #prefix:Ljava/lang/CharSequence;
    :cond_1e
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 353
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertTcToSc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    :cond_34
    :try_start_34
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictsNum(Ljava/lang/String;)I

    move-result v3

    .line 358
    .local v3, total:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPredictList(II)Ljava/util/List;

    move-result-object v0

    .line 359
    .local v0, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setPrediction(Ljava/util/List;)V

    .line 360
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_54} :catch_55

    goto :goto_1d

    .line 361
    .end local v0           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #total:I
    :catch_55
    move-exception v4

    move-object v1, v4

    .line 362
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d

    .line 365
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #prefix:Ljava/lang/CharSequence;
    :cond_5b
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->resetCandidateWindow()Z

    goto :goto_1d
.end method

.method private doSearch(C)V
    .registers 10
    .parameter "c"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    if-nez p1, :cond_29

    .line 192
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->delete()I

    move-result v0

    .line 203
    .local v0, candCount:I
    :goto_a
    :try_start_a
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setSuggestion(Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_42

    .line 208
    .end local v1           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_19
    invoke-virtual {p0, v7}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 209
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 210
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 214
    .end local v0           #candCount:I
    :goto_28
    return-void

    .line 194
    :cond_29
    const/16 v3, 0x27

    if-ne p1, v3, :cond_3b

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 195
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->commitText(Ljava/lang/String;)V

    goto :goto_28

    .line 198
    :cond_3b
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->append(C)I

    move-result v0

    .restart local v0       #candCount:I
    goto :goto_a

    .line 205
    :catch_42
    move-exception v3

    move-object v2, v3

    .line 206
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19

    .line 212
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_48
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    goto :goto_28
.end method

.method private prepareSoftKeys()V
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    .line 291
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 292
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v8

    aput-object v5, v4, v8

    .line 293
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v9

    aput-object v5, v4, v9

    .line 294
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v10

    aput-object v5, v4, v10

    .line 295
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v11

    aput-object v5, v4, v11

    .line 296
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->MODE_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    .line 297
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v6, v4, v5

    .line 335
    :goto_3d
    return-void

    .line 299
    :cond_3e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_CLEAR:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v6, v4, v5

    .line 300
    const/4 v2, 0x0

    .line 302
    .local v2, pinyins:[Ljava/lang/String;
    :try_start_47
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetNextSpls()[Ljava/lang/String;
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_50} :catch_8e

    move-result-object v2

    .line 306
    :goto_51
    const/4 v1, 0x0

    .line 307
    .local v1, i:I
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    array-length v3, v4

    .line 308
    .local v3, size:I
    if-eqz v2, :cond_9e

    .line 309
    array-length v4, v2

    if-eqz v4, :cond_94

    array-length v4, v2

    if-le v4, v3, :cond_94

    .line 310
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN_MORE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v5, v4, v7

    .line 311
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_PINYIN_MORE:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    invoke-virtual {v4, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 312
    add-int/lit8 v3, v3, -0x1

    .line 317
    :goto_6a
    if-ge v1, v3, :cond_a6

    .line 318
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setLabelForPinyinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 320
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setData(Ljava/lang/Object;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 303
    .end local v1           #i:I
    .end local v3           #size:I
    :catch_8e
    move-exception v4

    move-object v0, v4

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_51

    .line 314
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_94
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    .line 315
    array-length v3, v2

    goto :goto_6a

    .line 323
    :cond_9e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v7

    aput-object v5, v4, v7

    .line 325
    :cond_a6
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    array-length v3, v4

    .line 326
    :goto_a9
    if-ge v1, v3, :cond_c0

    .line 327
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v1

    const-string v5, ""

    invoke-direct {p0, v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setLabelForPinyinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V

    .line 328
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v4, v4, v1

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 330
    :cond_c0
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v8

    aput-object v5, v4, v8

    .line 331
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v9

    aput-object v5, v4, v9

    .line 332
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v10

    aput-object v5, v4, v10

    .line 333
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->PINYIN_KEYS:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aget-object v5, v5, v11

    aput-object v5, v4, v11

    goto/16 :goto_3d
.end method

.method private reset()V
    .registers 4

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imResetSearch()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_1d

    .line 139
    :goto_9
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->clear()V

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 141
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    if-eqz v1, :cond_1c

    .line 142
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->dismiss()V

    .line 144
    :cond_1c
    return-void

    .line 135
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method private setLabelForPinyinKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .parameter "label"

    .prologue
    .line 285
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->label:Ljava/lang/Object;

    .line 286
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->popupLabel:Ljava/lang/Object;

    .line 287
    iput-object p2, p1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->highlightLabel:Ljava/lang/Object;

    .line 288
    return-void
.end method

.method private showSpellingWindow(Ljava/util/List;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    .line 217
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 218
    .local v8, candidateLoc:[I
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getCandidatesView()Landroid/view/View;

    move-result-object v7

    .line 219
    .local v7, candidate:Landroid/view/View;
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getView()Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, view:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 223
    .local v5, width:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v6, v0, v2

    .line 227
    .local v6, height:I
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v8, v3

    aget v4, v8, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;-><init>(Landroid/view/View;Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    .line 229
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-virtual {v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->setOnClickListener(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, v9}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setSwallowDpadEvents(Z)V

    .line 231
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->show(Ljava/util/List;I)V

    .line 232
    return-void
.end method


# virtual methods
.method commitText(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    :goto_6
    return-void

    .line 181
    :cond_7
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 182
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->convertScToTc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, tc:Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->commitText(Ljava/lang/String;)V

    goto :goto_6

    .line 185
    .end local v0           #tc:Ljava/lang/String;
    :cond_23
    invoke-super {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->commitText(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getKeyboard()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 2

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->prepareSoftKeys()V

    .line 340
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object v0
.end method

.method public onCandidateTouched(ILjava/lang/String;)V
    .registers 10
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    .line 371
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 374
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->commitText(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->doPrediction()V

    .line 394
    :goto_f
    return-void

    .line 378
    :cond_10
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->chooseCandidate(ILjava/lang/String;)I

    move-result v0

    .line 379
    .local v0, candCount:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isAllChosen()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 380
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->commitText(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->doPrediction()V

    .line 382
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    goto :goto_f

    .line 386
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setSuggestion(Ljava/util/List;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_41} :catch_51

    .line 391
    .end local v1           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_41
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 392
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    goto :goto_f

    .line 388
    :catch_51
    move-exception v3

    move-object v2, v3

    .line 389
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_41
.end method

.method public onClick(ILjava/lang/Object;)V
    .registers 10
    .parameter "i"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 397
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->chooseSpelling(I)I

    move-result v0

    .line 399
    .local v0, candCount:I
    :try_start_7
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v1

    .line 400
    .local v1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->setSuggestion(Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_2f

    .line 404
    .end local v1           #cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_16
    invoke-virtual {p0, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 405
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->get()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showComposingWindow(Ljava/lang/CharSequence;Z)V

    .line 407
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    if-eqz v3, :cond_2b

    .line 408
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mPinyinSelector:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->dismiss()V

    .line 410
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    .line 411
    return-void

    .line 401
    :catch_2f
    move-exception v3

    move-object v2, v3

    .line 402
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public onDismiss()V
    .registers 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->setSwallowDpadEvents(Z)V

    .line 415
    return-void
.end method

.method public onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .registers 8
    .parameter "ic"
    .parameter "ei"
    .parameter "flags"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onInit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;I)V

    .line 105
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mSoftKeys:[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->KEY_SMART:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    aput-object v3, v1, v2

    .line 107
    :try_start_b
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->setDecoderMode(I)V

    .line 108
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSetPinyinKeymapMode(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_26

    .line 112
    :goto_1f
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->reset()V

    .line 113
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->prepareSoftKeys()V

    .line 114
    return-void

    .line 109
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method

.method public onKey(ILjava/lang/Object;)V
    .registers 12
    .parameter "key"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 236
    packed-switch p1, :pswitch_data_76

    .line 281
    :cond_4
    :goto_4
    :pswitch_4
    invoke-super {p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onKey(ILjava/lang/Object;)V

    .line 282
    .end local p2
    :cond_7
    :goto_7
    return-void

    .line 238
    .restart local p2
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 239
    .local v1, c:C
    invoke-direct {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->doSearch(C)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 243
    .end local v1           #c:C
    .restart local p2
    :pswitch_15
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    move-result v6

    .line 244
    .local v6, submitted:Z
    if-nez v6, :cond_7

    .line 250
    .end local v6           #submitted:Z
    :pswitch_1d
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/dev/IME;->maySubmitCandidate()Z

    .line 251
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->commitText(Ljava/lang/String;)V

    goto :goto_7

    .line 254
    .restart local p2
    :pswitch_28
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 255
    invoke-direct {p0, v8}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->doSearch(C)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 261
    :pswitch_37
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 262
    .local v5, pyIndex:I
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->onClick(ILjava/lang/Object;)V

    goto :goto_4

    .line 265
    .end local v5           #pyIndex:I
    :pswitch_44
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 266
    .local v4, pinyins:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v3, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_50
    array-length v7, v4

    if-ge v2, v7, :cond_5f

    .line 268
    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 270
    :cond_5f
    invoke-direct {p0, v3}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showSpellingWindow(Ljava/util/List;)V

    goto :goto_7

    .line 273
    .end local v2           #i:I
    .end local v3           #labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4           #pinyins:[Ljava/lang/String;
    .restart local p2
    :pswitch_63
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mComposingText:Lcom/google/android/inputmethod/pinyin/dev/ComposingText;

    invoke-virtual {v7}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 274
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->reset()V

    .line 275
    invoke-virtual {p0, v8}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    goto :goto_7

    .line 236
    nop

    :pswitch_data_76
    .packed-switch 0x15
        :pswitch_28
        :pswitch_63
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_1d
        :pswitch_15
        :pswitch_1d
        :pswitch_37
        :pswitch_44
    .end packed-switch
.end method

.method public onRelease()V
    .registers 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onRelease()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->reset()V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 121
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->prepareSoftKeys()V

    .line 122
    return-void
.end method

.method public onReset()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->onReset()V

    .line 127
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->reset()V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->showCandidateWindow(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->updateSoftKeyboard()V

    .line 130
    return-void
.end method

.method setPrediction(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 171
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->convertScList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 173
    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->setPrediction(Ljava/util/List;)V

    .line 174
    return-void
.end method

.method setSuggestion(Ljava/util/List;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, cands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getTradition()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 149
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4, p1}, Lcom/google/android/inputmethod/pinyin/dev/IME;->convertScList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 153
    :cond_c
    :try_start_c
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/T9PinyinProcessor;->mIME:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v4}, Lcom/google/android/inputmethod/pinyin/dev/IME;->getDecoder()Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I

    move-result v2

    .line 154
    .local v2, fixed:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    if-lez v2, :cond_35

    .line 155
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 156
    .local v3, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, first:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 158
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_35} :catch_39

    .line 165
    .end local v1           #first:Ljava/lang/String;
    .end local v2           #fixed:I
    .end local v3           #iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/T9GenericProcessor;->setSuggestion(Ljava/util/List;)V

    .line 166
    return-void

    .line 161
    :catch_39
    move-exception v4

    move-object v0, v4

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_35
.end method
