.class public Lcom/google/android/inputmethod/pinyin/Decoder;
.super Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;
.source "Decoder.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DICT_PINYIN_EXT:Ljava/lang/String; = "dict_pinyin_ext.dat"

.field private static final DICT_PINYIN_USR:Ljava/lang/String; = "dict_pinyin_usr.dat"

.field private static final DICT_STROKE_USR:Ljava/lang/String; = "dict_stroke_usr.dat"

.field public static final PINYIN:I = 0x0

.field public static final STROKE:I = 0x1

.field private static final WORD_LIST_USR:Ljava/lang/String; = "predict_usr.dat"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const-class v1, Lcom/google/android/inputmethod/pinyin/Decoder;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    :goto_9
    sput-boolean v1, Lcom/google/android/inputmethod/pinyin/Decoder;->$assertionsDisabled:Z

    .line 120
    :try_start_b
    const-string v1, "jni_googlepinyinime_3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_b .. :try_end_10} :catch_13

    .line 124
    :goto_10
    return-void

    .line 30
    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    .line 121
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "GooglePinyinIME"

    const-string v2, "WARNING: Could not load jni_googlepinyinime_3 natives"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    .line 130
    :try_start_6
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dummy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_12} :catch_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_15

    .line 135
    :goto_12
    iput v3, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    .line 136
    return-void

    .line 132
    :catch_15
    move-exception v0

    goto :goto_12

    .line 131
    :catch_17
    move-exception v0

    goto :goto_12
.end method

.method static native nativeCloseWordList()Z
.end method

.method static native nativeGetPredictItem(I)Ljava/lang/String;
.end method

.method static native nativeGetPredictsNum(Ljava/lang/String;)I
.end method

.method static native nativeOpenWordList(Ljava/lang/String;)Z
.end method

.method static native nativePinyinAddLetter(B)I
.end method

.method static native nativePinyinCancelInput()Z
.end method

.method static native nativePinyinCancelLastChoice()I
.end method

.method static native nativePinyinCancelLastChoiceOfNextSpl()I
.end method

.method static native nativePinyinChoose(I)I
.end method

.method static native nativePinyinChooseNextSpl(I)I
.end method

.method static native nativePinyinCloseDecoder()Z
.end method

.method static native nativePinyinDelSearch(IZZ)I
.end method

.method static native nativePinyinDoTimeCostingOperation()V
.end method

.method static native nativePinyinFlushCache()Z
.end method

.method static native nativePinyinGetChoice(I)Ljava/lang/String;
.end method

.method static native nativePinyinGetConvertedSplStr()Ljava/lang/String;
.end method

.method static native nativePinyinGetFixedLen()I
.end method

.method static native nativePinyinGetFixedSpsIdNum()I
.end method

.method static native nativePinyinGetFixedSpsStrLen()I
.end method

.method static native nativePinyinGetNextSpls()[Ljava/lang/String;
.end method

.method static native nativePinyinGetNextSplsActiveIndex()I
.end method

.method static native nativePinyinGetPyStr(Z)Ljava/lang/String;
.end method

.method static native nativePinyinGetPyStrLen(Z)I
.end method

.method static native nativePinyinGetSplStart()[I
.end method

.method static native nativePinyinIsKeymapModeEnabled()Z
.end method

.method static native nativePinyinNeedTimeCostingOperation()Z
.end method

.method static native nativePinyinOnInputCycleEnd()Z
.end method

.method static native nativePinyinOpenDecoder(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;JJLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativePinyinResetSearch()V
.end method

.method static native nativePinyinSearch([BI)I
.end method

.method static native nativePinyinSetKeymapMode(Z)V
.end method

.method static native nativePinyinSetMaxLens(II)V
.end method

.method static native nativePinyinSyncBegin(Ljava/lang/String;)Z
.end method

.method static native nativePinyinSyncClearLastGot()Z
.end method

.method static native nativePinyinSyncFinish()Z
.end method

.method static native nativePinyinSyncGetCapacity()I
.end method

.method static native nativePinyinSyncGetLastCount()I
.end method

.method static native nativePinyinSyncGetLemmas()Ljava/lang/String;
.end method

.method static native nativePinyinSyncGetTotalCount()I
.end method

.method static native nativePinyinSyncPutLemmas(Ljava/lang/String;)I
.end method

.method static native nativePinyinUpdateBegin(Ljava/lang/String;)Z
.end method

.method static native nativePinyinUpdateFinish()Z
.end method

.method static native nativePinyinUpdatePutLemmas(Ljava/lang/String;)I
.end method

.method static native nativeStrokeAddLetter(B)I
.end method

.method static native nativeStrokeCancelInput()Z
.end method

.method static native nativeStrokeCancelLastChoice()I
.end method

.method static native nativeStrokeChoose(I)I
.end method

.method static native nativeStrokeCloseDecoder()Z
.end method

.method static native nativeStrokeDelSearch(IZZ)I
.end method

.method static native nativeStrokeDoTimeCostingOperation()V
.end method

.method static native nativeStrokeFlushCache()Z
.end method

.method static native nativeStrokeGetChoice(I)Ljava/lang/String;
.end method

.method static native nativeStrokeGetFixedLen()I
.end method

.method static native nativeStrokeGetPyStr(Z)Ljava/lang/String;
.end method

.method static native nativeStrokeGetPyStrLen(Z)I
.end method

.method static native nativeStrokeGetSplStart()[I
.end method

.method static native nativeStrokeNeedTimeCostingOperation()Z
.end method

.method static native nativeStrokeOnInputCycleEnd()Z
.end method

.method static native nativeStrokeOpenDecoder(Ljava/io/FileDescriptor;JJLjava/lang/String;)Z
.end method

.method static native nativeStrokeResetSearch()V
.end method

.method static native nativeStrokeSearch([BI)I
.end method

.method static native nativeStrokeSetFaultTolerance(Z)V
.end method

.method static native nativeStrokeSetMaxLens(II)V
.end method

.method static native nativeTrainWordList(Ljava/lang/String;)Z
.end method

.method private openPinyinDecoder()Z
    .registers 16

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 140
    .local v12, fd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    .line 141
    .local v14, wl:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dict_pinyin_usr.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, usr:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dict_pinyin_ext.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 144
    .local v11, ext:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    invoke-static/range {v0 .. v11}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinOpenDecoder(Ljava/io/FileDescriptor;JJLjava/io/FileDescriptor;JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 149
    .local v13, inited:Z
    :try_start_4d
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 150
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_53} :catch_54

    .line 154
    :goto_53
    return v13

    .line 151
    :catch_54
    move-exception v0

    goto :goto_53
.end method

.method private openStrokeDecoder()Z
    .registers 9

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 159
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dict_stroke_usr.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, usr:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeOpenDecoder(Ljava/io/FileDescriptor;JJLjava/lang/String;)Z

    move-result v7

    .line 165
    .local v7, inited:Z
    :try_start_29
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 169
    :goto_2c
    return v7

    .line 166
    :catch_2d
    move-exception v0

    goto :goto_2c
.end method


# virtual methods
.method public closeDecoder()Z
    .registers 2

    .prologue
    .line 197
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeCloseWordList()Z

    .line 198
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinCloseDecoder()Z

    .line 199
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeCloseDecoder()Z

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public getDecoderMode()I
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    return v0
.end method

.method public imAddLetter(B)I
    .registers 3
    .parameter "ch"

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 238
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinAddLetter(B)I

    move-result v0

    .line 240
    :goto_8
    return v0

    :cond_9
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeAddLetter(B)I

    move-result v0

    goto :goto_8
.end method

.method public imCancelInput()Z
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 336
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinCancelInput()Z

    move-result v0

    .line 338
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeCancelInput()Z

    move-result v0

    goto :goto_8
.end method

.method public imCancelLastChoice()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 320
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinCancelLastChoice()I

    move-result v0

    .line 322
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeCancelLastChoice()I

    move-result v0

    goto :goto_8
.end method

.method public imCancelLastChoiceOfNextSpl()I
    .registers 2

    .prologue
    .line 398
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinCancelLastChoiceOfNextSpl()I

    move-result v0

    return v0
.end method

.method public imChoose(I)I
    .registers 3
    .parameter "choiceId"

    .prologue
    .line 311
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 312
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinChoose(I)I

    move-result v0

    .line 314
    :goto_8
    return v0

    :cond_9
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeChoose(I)I

    move-result v0

    goto :goto_8
.end method

.method public imChooseNextSpl(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 391
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 392
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinChooseNextSpl(I)I

    move-result v0

    .line 394
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public imDelSearch(IZZ)I
    .registers 5
    .parameter "pos"
    .parameter "isPosInSplid"
    .parameter "clearFxedThisStep"

    .prologue
    .line 221
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 222
    invoke-static {p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinDelSearch(IZZ)I

    move-result v0

    .line 224
    :goto_8
    return v0

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeDelSearch(IZZ)I

    move-result v0

    goto :goto_8
.end method

.method public imDoTimeCostingOperation()V
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_8

    .line 368
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinDoTimeCostingOperation()V

    .line 372
    :goto_7
    return-void

    .line 370
    :cond_8
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeDoTimeCostingOperation()V

    goto :goto_7
.end method

.method public imFlushCache()V
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_8

    .line 344
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinFlushCache()Z

    .line 348
    :goto_7
    return-void

    .line 346
    :cond_8
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeFlushCache()Z

    goto :goto_7
.end method

.method public imGetChoice(I)Ljava/lang/String;
    .registers 3
    .parameter "choiceId"

    .prologue
    .line 282
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 283
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetChoice(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_8
    return-object v0

    :cond_9
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeGetChoice(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public imGetChoiceList(III)Ljava/util/List;
    .registers 8
    .parameter "choicesStart"
    .parameter "choicesNum"
    .parameter "sentFixedLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 302
    .local v0, choiceList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move v1, p1

    .local v1, i:I
    :goto_6
    add-int v3, p1, p2

    if-ge v1, v3, :cond_1a

    .line 303
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/Decoder;->imGetChoice(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, retStr:Ljava/lang/String;
    if-nez v1, :cond_14

    invoke-virtual {v2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_14
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 307
    .end local v2           #retStr:Ljava/lang/String;
    :cond_1a
    return-object v0
.end method

.method public imGetChoices(I)Ljava/lang/String;
    .registers 6
    .parameter "choicesNum"

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, retStr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_29

    .line 292
    if-nez v1, :cond_d

    .line 293
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/Decoder;->imGetChoice(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 295
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/Decoder;->imGetChoice(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 297
    :cond_29
    return-object v1
.end method

.method public imGetConvertedSplStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 412
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetConvertedSplStr()Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public imGetFixedLen()I
    .registers 2

    .prologue
    .line 327
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 328
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetFixedLen()I

    move-result v0

    .line 330
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeGetFixedLen()I

    move-result v0

    goto :goto_8
.end method

.method public imGetFixedSpsIdNum()I
    .registers 2

    .prologue
    .line 406
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetFixedSpsIdNum()I

    move-result v0

    return v0
.end method

.method public imGetFixedSpsStrLen()I
    .registers 2

    .prologue
    .line 402
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetFixedSpsStrLen()I

    move-result v0

    return v0
.end method

.method public imGetNextSpls()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 376
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetNextSpls()[Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public imGetNextSplsActiveIndex()I
    .registers 2

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 384
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetNextSplsActiveIndex()I

    move-result v0

    .line 386
    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public imGetPredictItem(I)Ljava/lang/String;
    .registers 3
    .parameter "predictNo"

    .prologue
    .line 422
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeGetPredictItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imGetPredictList(II)Ljava/util/List;
    .registers 6
    .parameter "predictsStart"
    .parameter "predictsNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 428
    .local v1, predictList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    move v0, p1

    .local v0, i:I
    :goto_6
    add-int v2, p1, p2

    if-ge v0, v2, :cond_14

    .line 429
    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeGetPredictItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 433
    :cond_14
    return-object v1
.end method

.method public imGetPredictsNum(Ljava/lang/String;)I
    .registers 3
    .parameter "fixedStr"

    .prologue
    .line 418
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeGetPredictsNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public imGetPyStr(Z)Ljava/lang/String;
    .registers 8
    .parameter "decoded"

    .prologue
    .line 245
    iget v4, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v4, :cond_36

    .line 246
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinIsKeymapModeEnabled()Z

    move-result v2

    .line 247
    .local v2, keymap:Z
    if-nez v2, :cond_f

    .line 248
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetPyStr(Z)Ljava/lang/String;

    move-result-object v4

    .line 261
    .end local v2           #keymap:Z
    :goto_e
    return-object v4

    .line 250
    .restart local v2       #keymap:Z
    :cond_f
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetConvertedSplStr()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, converted:Ljava/lang/String;
    if-eqz p1, :cond_17

    move-object v4, v0

    .line 252
    goto :goto_e

    .line 254
    :cond_17
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetPyStr(Z)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, raw:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    .local v1, convertedLen:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 261
    .end local v0           #converted:Ljava/lang/String;
    .end local v1           #convertedLen:I
    .end local v2           #keymap:Z
    .end local v3           #raw:Ljava/lang/String;
    :cond_36
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeGetPyStr(Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_e
.end method

.method public imGetPyStrLen(Z)I
    .registers 3
    .parameter "decoded"

    .prologue
    .line 266
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 267
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetPyStrLen(Z)I

    move-result v0

    .line 269
    :goto_8
    return v0

    :cond_9
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeGetPyStrLen(Z)I

    move-result v0

    goto :goto_8
.end method

.method public imGetSplStart()[I
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 275
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinGetSplStart()[I

    move-result-object v0

    .line 277
    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeGetSplStart()[I

    move-result-object v0

    goto :goto_8
.end method

.method public imNeedTimeCostingOperation()Z
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 360
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinNeedTimeCostingOperation()Z

    move-result v0

    .line 362
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeNeedTimeCostingOperation()Z

    move-result v0

    goto :goto_8
.end method

.method public imOnInputCycleEnd()Z
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 352
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinOnInputCycleEnd()Z

    move-result v0

    .line 354
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeOnInputCycleEnd()Z

    move-result v0

    goto :goto_8
.end method

.method public imResetSearch()V
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_8

    .line 230
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinResetSearch()V

    .line 234
    :goto_7
    return-void

    .line 232
    :cond_8
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeResetSearch()V

    goto :goto_7
.end method

.method public imSearch([BI)I
    .registers 4
    .parameter "pyBuf"
    .parameter "pyLen"

    .prologue
    .line 212
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 213
    invoke-static {p1, p2}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSearch([BI)I

    move-result v0

    .line 215
    :goto_8
    return v0

    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeSearch([BI)I

    move-result v0

    goto :goto_8
.end method

.method public imSetMaxLens(II)V
    .registers 4
    .parameter "maxSpsLen"
    .parameter "maxHzsLen"

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_8

    .line 205
    invoke-static {p1, p2}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSetMaxLens(II)V

    .line 209
    :goto_7
    return-void

    .line 207
    :cond_8
    invoke-static {p1, p2}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeSetMaxLens(II)V

    goto :goto_7
.end method

.method public imSetPinyinKeymapMode(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 445
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSetKeymapMode(Z)V

    .line 446
    return-void
.end method

.method public imSetStrokeFaultTolerance(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 441
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeStrokeSetFaultTolerance(Z)V

    .line 442
    return-void
.end method

.method public imTrainPredicts(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 437
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeTrainWordList(Ljava/lang/String;)Z

    .line 438
    return-void
.end method

.method public openDecoder()Z
    .registers 5

    .prologue
    .line 182
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v3, "predict_usr.dat"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, wordlist:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativeOpenWordList(Ljava/lang/String;)Z

    move-result v0

    .line 185
    .local v0, inited:Z
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/Decoder;->openPinyinDecoder()Z

    move-result v2

    and-int/2addr v0, v2

    .line 186
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/Decoder;->openStrokeDecoder()Z

    move-result v2

    and-int/2addr v0, v2

    .line 188
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/Settings;->getInstance(Landroid/content/SharedPreferences;)Lcom/google/android/inputmethod/pinyin/Settings;

    .line 190
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->getFaultTolerance()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/Decoder;->imSetStrokeFaultTolerance(Z)V

    .line 191
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Settings;->releaseInstance()V

    .line 193
    return v0
.end method

.method public setDecoderMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 177
    sget-boolean v0, Lcom/google/android/inputmethod/pinyin/Decoder;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_f
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    .line 179
    return-void
.end method

.method public syncBegin()Z
    .registers 3

    .prologue
    .line 449
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_15

    .line 450
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dict_pinyin_usr.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncBegin(Ljava/lang/String;)Z

    move-result v0

    .line 452
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public syncClearLastGot()V
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_7

    .line 491
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncClearLastGot()Z

    .line 493
    :cond_7
    return-void
.end method

.method public syncFinish()V
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_7

    .line 457
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncFinish()Z

    .line 459
    :cond_7
    return-void
.end method

.method public syncGetCapacity()I
    .registers 2

    .prologue
    .line 496
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 497
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncGetCapacity()I

    move-result v0

    .line 499
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public syncGetLastCount()I
    .registers 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 477
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncGetLastCount()I

    move-result v0

    .line 479
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public syncGetLemmas()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 470
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncGetLemmas()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public syncGetTotalCount()I
    .registers 2

    .prologue
    .line 483
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 484
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncGetTotalCount()I

    move-result v0

    .line 486
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public syncPutLemmas(Ljava/lang/String;)I
    .registers 3
    .parameter "tomerge"

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 463
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinSyncPutLemmas(Ljava/lang/String;)I

    move-result v0

    .line 465
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public updateBegin()Z
    .registers 3

    .prologue
    .line 503
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_15

    .line 504
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mContext:Landroid/content/Context;

    const-string v1, "dict_pinyin_ext.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinUpdateBegin(Ljava/lang/String;)Z

    move-result v0

    .line 506
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public updateFinish()V
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_7

    .line 511
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinUpdateFinish()Z

    .line 513
    :cond_7
    return-void
.end method

.method public updatePutLemmas(Ljava/lang/String;)I
    .registers 3
    .parameter "tomerge"

    .prologue
    .line 516
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/Decoder;->mMode:I

    if-nez v0, :cond_9

    .line 517
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/Decoder;->nativePinyinUpdatePutLemmas(Ljava/lang/String;)I

    move-result v0

    .line 519
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
