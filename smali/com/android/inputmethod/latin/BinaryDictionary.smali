.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"

# interfaces
.implements Lcom/android/inputmethod/latin/MekDictionary;


# static fields
.field private static final ENABLE_MISSED_CHARACTERS:Z = true

.field private static final MATCH_MULTIPLIER:I = 0x2

.field private static final MAX_ALTERNATIVES:I = 0x10

.field private static final MAX_WORDS:I = 0x10

.field public static final MAX_WORD_LENGTH:I = 0x30

.field private static final MEK_MAX_ALTERNATIVES:I = 0x8

.field private static final MEK_MAX_WORDS:I = 0x32

.field public static final MEK_MAX_WORD_LENGTH:I = 0x30

.field private static final PREDICT_MULTIPLIER:I = 0x2

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private mDictLength:I

.field private mFrequencies:[I

.field private mInputCodes:[I

.field private mMekFrequencies:[I

.field private mMekInputCodes:[C

.field private mMekOutputChars:[C

.field private mNativeDict:I

.field private mNativeMekDict:I

.field private mOutputChars:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    :try_start_0
    const-string v1, "jni_googlepinyinime_latinime_3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    .line 57
    :goto_5
    return-void

    .line 53
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BinaryDictionary"

    const-string v2, "Could not load native library jni_googlepinyinime_latinime_3"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "resId"

    .prologue
    const/16 v1, 0x300

    .line 64
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 47
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    .line 150
    const/16 v0, 0x180

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekInputCodes:[C

    .line 151
    const/16 v0, 0x960

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekOutputChars:[C

    .line 152
    const/16 v0, 0x32

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekFrequencies:[I

    .line 65
    if-eqz p2, :cond_2a

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Landroid/content/Context;I)V

    .line 68
    :cond_2a
    return-void
.end method

.method private native closeMekNative(I)V
.end method

.method private native closeNative(I)V
.end method

.method private native getMekSuggestionsNative(I[CII[C[III)I
.end method

.method private native getSuggestionsNative(I[II[C[IIIII[II)I
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;I)V
    .registers 12
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v6, 0x2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 87
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/io/FileDescriptor;JJII)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 89
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0, v6, v6}, Lcom/android/inputmethod/latin/BinaryDictionary;->openMekNative(III)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeMekDict:I

    .line 91
    :try_start_25
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 94
    :goto_28
    return-void

    .line 92
    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method private native openMekNative(III)I
.end method

.method private native openNative(Ljava/io/FileDescriptor;JJII)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_12

    .line 202
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeMekDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeMekNative(I)V

    .line 203
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 206
    :cond_12
    monitor-exit p0

    return-void

    .line 201
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    return-void
.end method

.method public getMekWords(Ljava/util/List;Lcom/android/inputmethod/latin/Dictionary$WordCallback;)V
    .registers 24
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[C>;",
            "Lcom/android/inputmethod/latin/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<[C>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x30

    if-le v5, v6, :cond_9

    .line 186
    :cond_8
    return-void

    .line 161
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekInputCodes:[C

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 162
    const/16 v16, 0x0

    .line 163
    .local v16, i:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [C

    .line 164
    .local v14, alternatives:[C
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekInputCodes:[C

    move-object v6, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16           #i:I
    .local v17, i:I
    mul-int/lit8 v7, v16, 0x8

    array-length v8, v14

    const/16 v9, 0x8

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v14, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v16, v17

    .end local v17           #i:I
    .restart local v16       #i:I
    goto :goto_18

    .line 169
    .end local v14           #alternatives:[C
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeMekDict:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekInputCodes:[C

    move-object v7, v0

    const/16 v8, 0x8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekOutputChars:[C

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekFrequencies:[I

    move-object v11, v0

    const/16 v12, 0x30

    const/16 v13, 0x32

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/android/inputmethod/latin/BinaryDictionary;->getMekSuggestionsNative(I[CII[C[III)I

    move-result v15

    .line 174
    .local v15, count:I
    const/16 v16, 0x0

    :goto_61
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_8

    .line 175
    mul-int/lit8 v20, v16, 0x30

    .line 176
    .local v20, start:I
    const/16 v19, 0x0

    .line 177
    .local v19, len:I
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekOutputChars:[C

    move-object v5, v0

    add-int v6, v20, v19

    aget-char v5, v5, v6

    if-eqz v5, :cond_7f

    const/16 v5, 0x30

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_7f

    .line 178
    add-int/lit8 v19, v19, 0x1

    goto :goto_6a

    .line 180
    :cond_7f
    if-lez v19, :cond_9b

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekOutputChars:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mMekFrequencies:[I

    move-object v6, v0

    aget v6, v6, v16

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v19

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIII)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 174
    :cond_9b
    add-int/lit8 v16, v16, 0x1

    goto :goto_61
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:I

    return v0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    .registers 28
    .parameter "codes"
    .parameter "callback"
    .parameter "nextLettersFrequencies"

    .prologue
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v8

    .line 101
    .local v8, codesSize:I
    const/16 v5, 0x2f

    if-le v8, v5, :cond_9

    .line 144
    :cond_8
    return-void

    .line 103
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v5, v0

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 104
    const/16 v19, 0x0

    .local v19, i:I
    :goto_14
    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_3f

    .line 105
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v17

    .line 106
    .local v17, alternatives:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v6, v0

    mul-int/lit8 v7, v19, 0x10

    move-object/from16 v0, v17

    array-length v0, v0

    move v9, v0

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, v17

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    add-int/lit8 v19, v19, 0x1

    goto :goto_14

    .line 109
    .end local v17           #alternatives:[I
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v10, v0

    const/16 v11, 0x30

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz p3, :cond_d6

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v16, v5

    :goto_74
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    invoke-direct/range {v5 .. v16}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v18

    .line 122
    .local v18, count:I
    const/4 v5, 0x5

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_b2

    .line 123
    const/4 v14, 0x0

    .local v14, skip:I
    :goto_83
    if-ge v14, v8, :cond_b2

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v10, v0

    const/16 v11, 0x30

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v16}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v23

    .line 128
    .local v23, tempCount:I
    move/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 129
    if-lez v23, :cond_da

    .line 133
    .end local v14           #skip:I
    .end local v23           #tempCount:I
    :cond_b2
    const/16 v20, 0x0

    .local v20, j:I
    :goto_b4
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v5, v0

    aget v5, v5, v20

    const/4 v6, 0x1

    if-lt v5, v6, :cond_8

    .line 135
    mul-int/lit8 v22, v20, 0x30

    .line 136
    .local v22, start:I
    const/16 v21, 0x0

    .line 137
    .local v21, len:I
    :goto_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v5, v0

    add-int v6, v22, v21

    aget-char v5, v5, v6

    if-eqz v5, :cond_dd

    .line 138
    add-int/lit8 v21, v21, 0x1

    goto :goto_c8

    .line 112
    .end local v18           #count:I
    .end local v20           #j:I
    .end local v21           #len:I
    .end local v22           #start:I
    :cond_d6
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_74

    .line 123
    .restart local v14       #skip:I
    .restart local v18       #count:I
    .restart local v23       #tempCount:I
    :cond_da
    add-int/lit8 v14, v14, 0x1

    goto :goto_83

    .line 140
    .end local v14           #skip:I
    .end local v23           #tempCount:I
    .restart local v20       #j:I
    .restart local v21       #len:I
    .restart local v22       #start:I
    :cond_dd
    if-lez v21, :cond_f6

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v6, v0

    aget v6, v6, v20

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v22

    move/from16 v3, v21

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIII)Z

    .line 133
    :cond_f6
    add-int/lit8 v20, v20, 0x1

    goto :goto_b4
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    .line 190
    if-nez p1, :cond_4

    const/4 v1, 0x0

    .line 192
    :goto_3
    return v1

    .line 191
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 192
    .local v0, chars:[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_3
.end method
