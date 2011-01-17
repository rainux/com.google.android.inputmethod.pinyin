.class public Lcom/google/android/inputmethod/pinyin/ScTcConverter;
.super Ljava/lang/Object;
.source "ScTcConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;,
        Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/inputmethod/pinyin/ScTcConverter;


# instance fields
.field private mBigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;

.field private mContext:Landroid/content/Context;

.field private mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;-><init>(Lcom/google/android/inputmethod/pinyin/ScTcConverter;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    .line 82
    new-instance v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;-><init>(Lcom/google/android/inputmethod/pinyin/ScTcConverter;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mBigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[C
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->loadRules(I)[C

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/ScTcConverter;I)[S
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->loadIndex(I)[S

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/ScTcConverter;
    .registers 2
    .parameter "context"

    .prologue
    .line 86
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->sInstance:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    if-eqz v0, :cond_7

    .line 87
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->sInstance:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    .line 90
    :goto_6
    return-object v0

    .line 89
    :cond_7
    new-instance v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/ScTcConverter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->sInstance:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    .line 90
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->sInstance:Lcom/google/android/inputmethod/pinyin/ScTcConverter;

    goto :goto_6
.end method

.method private loadIndex(I)[S
    .registers 15
    .parameter "resId"

    .prologue
    .line 47
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 50
    .local v5, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_a
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    .line 51
    .local v7, in:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    long-to-int v3, v11

    .line 52
    .local v3, byteCount:I
    new-array v2, v3, [B

    .line 53
    .local v2, ba:[B
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .line 54
    .local v9, read:I
    if-ne v9, v3, :cond_42

    .line 55
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 56
    shr-int/lit8 v10, v3, 0x1

    .line 57
    .local v10, shortCount:I
    new-array v8, v10, [S

    .line 58
    .local v8, out:[S
    const/4 v6, 0x0

    .local v6, i:I
    :goto_23
    if-ge v6, v10, :cond_40

    .line 59
    shl-int/lit8 v11, v6, 0x1

    aget-byte v0, v2, v11

    .line 60
    .local v0, b0:I
    shl-int/lit8 v11, v6, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v1, v2, v11

    .line 61
    .local v1, b1:I
    if-gez v0, :cond_33

    .line 62
    add-int/lit16 v0, v0, 0x100

    .line 64
    :cond_33
    if-gez v1, :cond_37

    .line 65
    add-int/lit16 v1, v1, 0x100

    .line 67
    :cond_37
    shl-int/lit8 v11, v1, 0x8

    or-int/2addr v11, v0

    int-to-short v11, v11

    aput-short v11, v8, v6

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .end local v0           #b0:I
    .end local v1           #b1:I
    :cond_40
    move-object v11, v8

    .line 75
    .end local v2           #ba:[B
    .end local v3           #byteCount:I
    .end local v6           #i:I
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v8           #out:[S
    .end local v9           #read:I
    .end local v10           #shortCount:I
    :goto_41
    return-object v11

    .line 71
    .restart local v2       #ba:[B
    .restart local v3       #byteCount:I
    .restart local v7       #in:Ljava/io/FileInputStream;
    .restart local v9       #read:I
    :cond_42
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_45} :catch_47

    .line 75
    .end local v2           #ba:[B
    .end local v3           #byteCount:I
    .end local v7           #in:Ljava/io/FileInputStream;
    .end local v9           #read:I
    :goto_45
    const/4 v11, 0x0

    goto :goto_41

    .line 72
    :catch_47
    move-exception v11

    move-object v4, v11

    .line 73
    .local v4, e:Ljava/io/IOException;
    const-string v11, "PinyinIME"

    const-string v12, "Failed to init converter!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private loadRules(I)[C
    .registers 10
    .parameter "resId"

    .prologue
    .line 27
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 30
    .local v2, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_a
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    const-string v7, "utf-16"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 31
    .local v5, reader:Ljava/io/InputStreamReader;
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    long-to-int v6, v6

    div-int/lit8 v0, v6, 0x2

    .line 32
    .local v0, charCount:I
    new-array v3, v0, [C

    .line 33
    .local v3, out:[C
    invoke-virtual {v5, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .line 34
    .local v4, read:I
    if-ne v4, v0, :cond_29

    .line 35
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    move-object v6, v3

    .line 42
    .end local v0           #charCount:I
    .end local v3           #out:[C
    .end local v4           #read:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :goto_28
    return-object v6

    .line 38
    .restart local v0       #charCount:I
    .restart local v3       #out:[C
    .restart local v4       #read:I
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    :cond_29
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_2e

    .line 42
    .end local v0           #charCount:I
    .end local v3           #out:[C
    .end local v4           #read:I
    .end local v5           #reader:Ljava/io/InputStreamReader;
    :goto_2c
    const/4 v6, 0x0

    goto :goto_28

    .line 39
    :catch_2e
    move-exception v6

    move-object v1, v6

    .line 40
    .local v1, e:Ljava/io/IOException;
    const-string v6, "PinyinIME"

    const-string v7, "Failed to init converter!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method


# virtual methods
.method public convertScToTc(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "sc"

    .prologue
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 96
    .local v3, scChars:[C
    const/4 v1, 0x0

    .line 97
    .local v1, i:I
    :goto_a
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_31

    .line 98
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mBigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;

    aget-char v6, v3, v1

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->convertSc(CC)[C

    move-result-object v0

    .line 99
    .local v0, bigramTc:[C
    if-eqz v0, :cond_23

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v1, v1, 0x2

    .line 102
    goto :goto_a

    .line 104
    :cond_23
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    aget-char v6, v3, v1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->convertSc(C)C

    move-result v4

    .line 105
    .local v4, unigramTc:C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_a

    .line 108
    .end local v0           #bigramTc:[C
    .end local v4           #unigramTc:C
    :cond_31
    array-length v5, v3

    if-ge v1, v5, :cond_3f

    .line 109
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    aget-char v6, v3, v1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->convertSc(C)C

    move-result v4

    .line 110
    .restart local v4       #unigramTc:C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .end local v4           #unigramTc:C
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public convertTcToSc(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "tc"

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 118
    .local v3, tcChars:[C
    const/4 v1, 0x0

    .line 119
    .local v1, i:I
    :goto_a
    array-length v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_31

    .line 120
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mBigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;

    aget-char v6, v3, v1

    add-int/lit8 v7, v1, 0x1

    aget-char v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$BigramRules;->convertTc(CC)[C

    move-result-object v0

    .line 121
    .local v0, bigramSc:[C
    if-eqz v0, :cond_23

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v1, v1, 0x2

    .line 124
    goto :goto_a

    .line 126
    :cond_23
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    aget-char v6, v3, v1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->convertTc(C)C

    move-result v4

    .line 127
    .local v4, unigramSc:C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    goto :goto_a

    .line 130
    .end local v0           #bigramSc:[C
    .end local v4           #unigramSc:C
    :cond_31
    array-length v5, v3

    if-ge v1, v5, :cond_3f

    .line 131
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/ScTcConverter;->mUnigramRules:Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;

    aget-char v6, v3, v1

    invoke-virtual {v5, v6}, Lcom/google/android/inputmethod/pinyin/ScTcConverter$UnigramRules;->convertTc(C)C

    move-result v4

    .line 132
    .restart local v4       #unigramSc:C
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .end local v4           #unigramSc:C
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
