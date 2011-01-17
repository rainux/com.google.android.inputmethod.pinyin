.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_NONE:I = 0x0

.field private static final LARGE_DICTIONARY_THRESHOLD:I = 0x30d40


# instance fields
.field private mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mAutoTextEnabled:Z

.field private mCapitalize:Z

.field private mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mCorrectionMode:I

.field private mHaveCorrection:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

.field private mNextLettersFrequencies:[I

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "dictionaryResId"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 56
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 62
    const/16 v2, 0x500

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 70
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 74
    new-instance v2, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v2, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v0, v2, :cond_3f

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 77
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 79
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_3f
    return-void
.end method

.method private collectGarbage()V
    .registers 7

    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 358
    .local v2, poolSize:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 359
    .local v1, garbageSize:I
    :goto_c
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v2, v3, :cond_2d

    if-lez v1, :cond_2d

    .line 360
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 361
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2a

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2a

    .line 362
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v2, v2, 0x1

    .line 365
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    .line 366
    goto :goto_c

    .line 367
    .end local v0           #garbage:Ljava/lang/CharSequence;
    :cond_2d
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 368
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String pool got too big: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_4b
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 371
    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .registers 10
    .parameter "mLowerOriginalWord"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, originalLength:I
    if-ne v1, p4, :cond_27

    aget-char v2, p2, p3

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 287
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_25

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p3, v0

    aget-char v3, p2, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_22

    move v2, v4

    .line 294
    .end local v0           #i:I
    :goto_21
    return v2

    .line 287
    .restart local v0       #i:I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 292
    :cond_25
    const/4 v2, 0x1

    goto :goto_21

    .end local v0           #i:I
    :cond_27
    move v2, v4

    .line 294
    goto :goto_21
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 14
    .parameter "original"
    .parameter "suggestion"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 137
    .local v5, originalLength:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 138
    .local v6, suggestionLength:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 139
    .local v3, minLength:I
    if-gt v3, v10, :cond_13

    move v7, v8

    .line 158
    :goto_12
    return v7

    .line 140
    :cond_13
    const/4 v2, 0x0

    .line 141
    .local v2, matching:I
    const/4 v1, 0x0

    .line 143
    .local v1, lessMatching:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v3, :cond_44

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 145
    .local v4, origChar:C
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v7

    if-ne v4, v7, :cond_31

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 143
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 148
    :cond_31
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v6, :cond_2e

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v7

    if-ne v4, v7, :cond_2e

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 153
    .end local v4           #origChar:C
    :cond_44
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    const/4 v7, 0x4

    if-gt v3, v7, :cond_51

    .line 156
    if-lt v2, v10, :cond_4f

    move v7, v8

    goto :goto_12

    :cond_4f
    move v7, v9

    goto :goto_12

    .line 158
    :cond_51
    div-int/lit8 v7, v3, 0x2

    if-le v2, v7, :cond_57

    move v7, v8

    goto :goto_12

    :cond_57
    move v7, v9

    goto :goto_12
.end method

.method private removeDupes()V
    .registers 8

    .prologue
    .line 253
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 254
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_a

    .line 270
    :cond_9
    return-void

    .line 255
    :cond_a
    const/4 v1, 0x1

    .line 257
    .local v1, i:I
    :goto_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 258
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 260
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_18
    if-ge v2, v1, :cond_2b

    .line 261
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 262
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 263
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Suggest;->removeFromSuggestions(I)V

    .line 264
    add-int/lit8 v1, v1, -0x1

    .line 268
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    .line 269
    goto :goto_b

    .line 260
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method private removeFromSuggestions(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 274
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_13

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    .line 275
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_13
    return-void
.end method


# virtual methods
.method public addWord([CIII)Z
    .registers 14
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "freq"

    .prologue
    const/4 v8, 0x1

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, pos:I
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 300
    .local v4, priorities:[I
    iget v3, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 302
    .local v3, prefMaxSuggestions:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    invoke-direct {p0, v6, p1, p2, p3}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 303
    const/4 v2, 0x0

    .line 317
    :cond_f
    :goto_f
    if-lt v2, v3, :cond_36

    move v6, v8

    .line 342
    :goto_12
    return v6

    .line 306
    :cond_13
    sub-int v6, v3, v8

    aget v6, v4, v6

    if-lt v6, p4, :cond_1d

    move v6, v8

    goto :goto_12

    .line 313
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    .line 307
    :cond_1d
    if-ge v2, v3, :cond_f

    .line 308
    aget v6, v4, v2

    if-lt v6, p4, :cond_f

    aget v6, v4, v2

    if-ne v6, p4, :cond_1b

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge p3, v6, :cond_1b

    goto :goto_f

    .line 320
    :cond_36
    add-int/lit8 v6, v2, 0x1

    sub-int v7, v3, v2

    sub-int/2addr v7, v8

    invoke-static {v4, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    aput p4, v4, v2

    .line 323
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 324
    .local v1, poolSize:I
    if-lez v1, :cond_8d

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    sub-int v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    move-object v5, v6

    .line 326
    .local v5, sb:Ljava/lang/StringBuilder;
    :goto_53
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 327
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/Suggest;->mCapitalize:Z

    if-eqz v6, :cond_96

    .line 328
    aget-char v6, p1, p2

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    if-le p3, v8, :cond_6d

    .line 330
    add-int/lit8 v6, p2, 0x1

    sub-int v7, p3, v8

    invoke-virtual {v5, p1, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 335
    :cond_6d
    :goto_6d
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 336
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_8b

    .line 337
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 338
    .local v0, garbage:Ljava/lang/CharSequence;
    instance-of v6, v0, Ljava/lang/StringBuilder;

    if-eqz v6, :cond_8b

    .line 339
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0           #garbage:Ljava/lang/CharSequence;
    :cond_8b
    move v6, v8

    .line 342
    goto :goto_12

    .line 324
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_8d
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v6

    goto :goto_53

    .line 333
    .restart local v5       #sb:Ljava/lang/StringBuilder;
    :cond_96
    invoke-virtual {v5, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_6d
.end method

.method public close()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 377
    :cond_9
    return-void
.end method

.method public getBinaryDictionary()Lcom/android/inputmethod/latin/BinaryDictionary;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    return-object v0
.end method

.method public getCorrectionMode()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getNextLettersFrequencies()[I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    return-object v0
.end method

.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;Z)Ljava/util/List;
    .registers 14
    .parameter "view"
    .parameter "wordComposer"
    .parameter "includeTypedWordIfValid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 173
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 174
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->isCapitalized()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCapitalize:Z

    .line 175
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage()V

    .line 176
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([II)V

    .line 177
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([II)V

    .line 180
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 181
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz v5, :cond_124

    .line 182
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 183
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 188
    :goto_36
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v5

    if-le v5, v7, :cond_85

    .line 189
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-nez v5, :cond_44

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_70

    .line 190
    :cond_44
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_4f

    .line 191
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v5, p2, p0, v6}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 193
    :cond_4f
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v5, :cond_5a

    .line 194
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v5, p2, p0, v6}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 197
    :cond_5a
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_70

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_70

    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v9, :cond_70

    .line 199
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 202
    :cond_70
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    invoke-virtual {v5, p2, p0, v6}, Lcom/android/inputmethod/latin/BinaryDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 203
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v9, :cond_85

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_85

    .line 204
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 207
    :cond_85
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    if-eqz v5, :cond_94

    .line 208
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 212
    :cond_94
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v9, :cond_b2

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_b2

    .line 213
    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {p0, v6, v5}, Lcom/android/inputmethod/latin/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 214
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 218
    :cond_b2
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    if-eqz v5, :cond_130

    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, i:I
    const/4 v3, 0x6

    .line 222
    .local v3, max:I
    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-ne v5, v7, :cond_bd

    const/4 v3, 0x1

    .line 223
    :cond_bd
    :goto_bd
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_130

    if-ge v2, v3, :cond_130

    .line 224
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, suggestedWord:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v8, v5, p1}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, autoText:Ljava/lang/CharSequence;
    if-eqz v0, :cond_12a

    move v1, v7

    .line 230
    .local v1, canAdd:Z
    :goto_e2
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12c

    move v5, v7

    :goto_f1
    and-int/2addr v1, v5

    .line 232
    if-eqz v1, :cond_114

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_114

    iget v5, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-eq v5, v7, :cond_114

    .line 233
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12e

    move v5, v7

    :goto_113
    and-int/2addr v1, v5

    .line 235
    :cond_114
    if-eqz v1, :cond_121

    .line 236
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 237
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    .line 240
    :cond_121
    add-int/lit8 v2, v2, 0x1

    .line 241
    goto :goto_bd

    .line 185
    .end local v0           #autoText:Ljava/lang/CharSequence;
    .end local v1           #canAdd:Z
    .end local v2           #i:I
    .end local v3           #max:I
    .end local v4           #suggestedWord:Ljava/lang/String;
    :cond_124
    const-string v5, ""

    iput-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto/16 :goto_36

    .restart local v0       #autoText:Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v3       #max:I
    .restart local v4       #suggestedWord:Ljava/lang/String;
    :cond_12a
    move v1, v8

    .line 228
    goto :goto_e2

    .restart local v1       #canAdd:Z
    :cond_12c
    move v5, v8

    .line 230
    goto :goto_f1

    :cond_12e
    move v5, v8

    .line 233
    goto :goto_113

    .line 244
    .end local v0           #autoText:Ljava/lang/CharSequence;
    .end local v1           #canAdd:Z
    .end local v2           #i:I
    .end local v3           #max:I
    .end local v4           #suggestedWord:Ljava/lang/String;
    :cond_130
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->removeDupes()V

    .line 245
    iget-object v5, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    return-object v5
.end method

.method public hasMainDictionary()Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasMinimalCorrection()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .registers 5
    .parameter "word"

    .prologue
    const/4 v2, 0x0

    .line 346
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move v0, v2

    .line 349
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_18
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_28
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    :cond_34
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    goto :goto_a

    :cond_42
    move v0, v2

    goto :goto_a
.end method

.method public setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "autoDictionary"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 114
    return-void
.end method

.method public setAutoTextEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    .line 83
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "userDictionary"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 110
    return-void
.end method

.method public setCorrectionMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 91
    return-void
.end method

.method public setMaxSuggestions(I)V
    .registers 5
    .parameter "maxSuggestions"

    .prologue
    .line 123
    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    const/16 v1, 0x64

    if-le p1, v1, :cond_f

    .line 124
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSuggestions must be between 1 and 100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_f
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 127
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 128
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage()V

    .line 129
    :goto_1a
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v1, v2, :cond_31

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 131
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 133
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_31
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .registers 2
    .parameter "userDictionary"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 103
    return-void
.end method
