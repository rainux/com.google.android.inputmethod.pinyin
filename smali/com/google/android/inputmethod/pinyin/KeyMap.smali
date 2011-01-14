.class public Lcom/google/android/inputmethod/pinyin/KeyMap;
.super Ljava/lang/Object;
.source "KeyMap.java"


# static fields
.field private static final SHIFT_FWCH:I = 0x10

.field private static final mKeyMap:[I

.field private static mLastPunc:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/android/inputmethod/pinyin/KeyMap;->mKeyMap:[I

    .line 52
    const/4 v0, 0x0

    sput-char v0, Lcom/google/android/inputmethod/pinyin/KeyMap;->mLastPunc:C

    return-void

    .line 24
    nop

    :array_e
    .array-data 0x4
        0x24t 0x0t 0xe5t 0xfft
        0x5et 0x0t 0x26t 0x20t
        0x28t 0x0t 0x8t 0xfft
        0x29t 0x0t 0x9t 0xfft
        0x5bt 0x0t 0x3dt 0xfft
        0x5ct 0x0t 0x1t 0x30t
        0x7bt 0x0t 0x5bt 0xfft
        0x7dt 0x0t 0x5dt 0xfft
        0x3at 0x0t 0x1at 0xfft
        0x2dt 0x0t 0xdt 0xfft
        0x3bt 0x0t 0x1bt 0xfft
        0x22t 0x0t 0x1ct 0x20t
        0x27t 0x0t 0x18t 0x20t
        0x3et 0x0t 0xbt 0x30t
        0x3ct 0x0t 0xat 0x30t
        0x2bt 0x0t 0xbt 0xfft
        0x3dt 0x0t 0x1dt 0xfft
        0x7ct 0x0t 0x5ct 0xfft
        0x5dt 0x0t 0x3bt 0xfft
        0x60t 0x0t 0x40t 0xfft
        0x2ct 0x0t 0xct 0xfft
        0x2et 0x0t 0x2t 0x30t
        0x7et 0x0t 0x5et 0xfft
        0x21t 0x0t 0x1t 0xfft
        0x3ft 0x0t 0x1ft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChineseLabel(C)C
    .registers 4
    .parameter "c"

    .prologue
    .line 62
    const/16 v1, 0x61

    if-lt p0, v1, :cond_8

    const/16 v1, 0x7a

    if-le p0, v1, :cond_10

    :cond_8
    const/16 v1, 0x41

    if-lt p0, v1, :cond_12

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_12

    .line 63
    :cond_10
    const/4 v1, 0x0

    .line 70
    :goto_11
    return v1

    .line 65
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    sget-object v1, Lcom/google/android/inputmethod/pinyin/KeyMap;->mKeyMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 66
    sget-object v1, Lcom/google/android/inputmethod/pinyin/KeyMap;->mKeyMap:[I

    aget v1, v1, v0

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, p0, :cond_2a

    .line 67
    sget-object v1, Lcom/google/android/inputmethod/pinyin/KeyMap;->mKeyMap:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x10

    int-to-char v1, v1

    goto :goto_11

    .line 65
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    move v1, p0

    .line 70
    goto :goto_11
.end method

.method public static mayToggleQuotaMark(C)C
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x201c

    const/16 v2, 0x2018

    .line 74
    move v0, p0

    .line 75
    .local v0, ret:C
    if-ne p0, v2, :cond_10

    .line 76
    sget-char v1, Lcom/google/android/inputmethod/pinyin/KeyMap;->mLastPunc:C

    if-ne v1, v2, :cond_d

    .line 77
    const/16 v0, 0x2019

    .line 79
    :cond_d
    sput-char v0, Lcom/google/android/inputmethod/pinyin/KeyMap;->mLastPunc:C

    .line 86
    :cond_f
    :goto_f
    return v0

    .line 80
    :cond_10
    if-ne p0, v3, :cond_f

    .line 81
    sget-char v1, Lcom/google/android/inputmethod/pinyin/KeyMap;->mLastPunc:C

    if-ne v1, v3, :cond_18

    .line 82
    const/16 v0, 0x201d

    .line 84
    :cond_18
    sput-char v0, Lcom/google/android/inputmethod/pinyin/KeyMap;->mLastPunc:C

    goto :goto_f
.end method
