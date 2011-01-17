.class public Lcom/google/android/inputmethod/pinyin/dev/ComposingText;
.super Ljava/lang/Object;
.source "ComposingText.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x20

.field public static final TYPE_CANDIDATES:Ljava/lang/Object;

.field public static final TYPE_SPELLING:Ljava/lang/Object;

.field public static final TYPE_UNKNOWN:Ljava/lang/Object;


# instance fields
.field private mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

.field private mPreviousCandidate:Ljava/lang/String;

.field private mPreviousCount:I

.field private mTail:I

.field private mUserInput:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/IDecoder;)V
    .registers 4
    .parameter "decoder"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCount:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCandidate:Ljava/lang/String;

    .line 45
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    .line 46
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    .line 47
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 48
    return-void
.end method


# virtual methods
.method public append(C)I
    .registers 9
    .parameter "c"

    .prologue
    const/16 v6, 0x27

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 57
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    if-lez v2, :cond_16

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    sub-int/2addr v3, v4

    aget-byte v2, v2, v3

    if-ne v2, v6, :cond_16

    if-ne p1, v6, :cond_16

    .line 58
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCount:I

    .line 77
    :goto_15
    return v2

    .line 61
    :cond_16
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    array-length v3, v3

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_2d

    .line 62
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    add-int/lit8 v2, v2, 0x20

    new-array v1, v2, [B

    .line 63
    .local v1, input:[B
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    .line 66
    .end local v1           #input:[B
    :cond_2d
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 71
    :try_start_38
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 72
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSearch([BI)I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCount:I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_4e

    goto :goto_15

    .line 73
    :catch_4e
    move-exception v2

    move-object v0, v2

    .line 74
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v5

    .line 77
    goto :goto_15
.end method

.method public chooseCandidate(ILjava/lang/String;)I
    .registers 6
    .parameter "candIndex"
    .parameter "text"

    .prologue
    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v2, p1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imChoose(I)I

    move-result v0

    .line 255
    .local v0, candCount:I
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCandidate:Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move v2, v0

    .line 260
    .end local v0           #candCount:I
    :goto_9
    return v2

    .line 257
    :catch_a
    move-exception v2

    move-object v1, v2

    .line 258
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 260
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public chooseSpelling(I)I
    .registers 5
    .parameter "splIndex"

    .prologue
    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v2, p1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imChooseNextSpl(I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    .local v0, candCount:I
    move v2, v0

    .line 277
    .end local v0           #candCount:I
    :goto_7
    return v2

    .line 274
    :catch_8
    move-exception v2

    move-object v1, v2

    .line 275
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 229
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imResetSearch()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    .line 235
    :goto_8
    return-void

    .line 232
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 233
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8
.end method

.method public delete()I
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 157
    :try_start_2
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetSplStart()[I

    move-result-object v4

    .line 158
    .local v4, starts:[I
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedSpsIdNum()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I

    move-result v6

    if-le v5, v6, :cond_3a

    .line 159
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v5}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imCancelLastChoiceOfNextSpl()I

    move-result v0

    .line 168
    .local v0, candCount:I
    :goto_1c
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPyStr(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 169
    .local v3, py:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_28
    array-length v5, v3

    if-ge v2, v5, :cond_8e

    .line 170
    aget-char v5, v3, v2

    packed-switch v5, :pswitch_data_94

    .line 214
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    aget-char v6, v3, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 169
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 161
    .end local v0           #candCount:I
    .end local v2           #i:I
    .end local v3           #py:[C
    :cond_3a
    iget v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    if-le v5, v7, :cond_4a

    .line 162
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    iget v6, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imDelSearch(IZZ)I

    move-result v0

    .restart local v0       #candCount:I
    goto :goto_1c

    .line 164
    .end local v0           #candCount:I
    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->clear()V

    move v5, v9

    .line 222
    .end local v4           #starts:[I
    :goto_4e
    return v5

    .line 174
    .restart local v0       #candCount:I
    .restart local v2       #i:I
    .restart local v3       #py:[C
    .restart local v4       #starts:[I
    :pswitch_4f
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x32

    aput-byte v6, v5, v2
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_55} :catch_56

    goto :goto_37

    .line 219
    .end local v0           #candCount:I
    .end local v2           #i:I
    .end local v3           #py:[C
    .end local v4           #starts:[I
    :catch_56
    move-exception v5

    move-object v1, v5

    .line 220
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move v5, v9

    .line 222
    goto :goto_4e

    .line 179
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #candCount:I
    .restart local v2       #i:I
    .restart local v3       #py:[C
    .restart local v4       #starts:[I
    :pswitch_5d
    :try_start_5d
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x33

    aput-byte v6, v5, v2

    goto :goto_37

    .line 184
    :pswitch_64
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x34

    aput-byte v6, v5, v2

    goto :goto_37

    .line 189
    :pswitch_6b
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x35

    aput-byte v6, v5, v2

    goto :goto_37

    .line 194
    :pswitch_72
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x36

    aput-byte v6, v5, v2

    goto :goto_37

    .line 200
    :pswitch_79
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x37

    aput-byte v6, v5, v2

    goto :goto_37

    .line 205
    :pswitch_80
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x38

    aput-byte v6, v5, v2

    goto :goto_37

    .line 211
    :pswitch_87
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mUserInput:[B

    const/16 v6, 0x39

    aput-byte v6, v5, v2

    goto :goto_37

    .line 217
    :cond_8e
    array-length v5, v3

    iput v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_91} :catch_56

    move v5, v0

    .line 218
    goto :goto_4e

    .line 170
    nop

    :pswitch_data_94
    .packed-switch 0x61
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_79
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
    .end packed-switch
.end method

.method public get()Ljava/lang/CharSequence;
    .registers 22

    .prologue
    .line 88
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPyStr(Z)Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, pyStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetPyStrLen(Z)I

    move-result v11

    .line 91
    .local v11, pyLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetSplStart()[I

    move-result-object v12

    .line 93
    .local v12, pyStarts:[I
    const-string v16, ""

    .line 94
    .local v16, starts:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_25
    if-eqz v12, :cond_50

    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_50

    .line 95
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget v19, v12, v9

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 94
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 97
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I

    move-result v7

    .line 98
    .local v7, fixedLen:I
    const/4 v15, 0x0

    .line 100
    .local v15, spellingStart:I
    new-instance v17, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 102
    .local v17, str:Landroid/text/SpannableStringBuilder;
    if-lez v7, :cond_81

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetChoice(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, cand0:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_ab

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mPreviousCandidate:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    :goto_7d
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 112
    .end local v5           #cand0:Ljava/lang/String;
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedSpsStrLen()I

    move-result v8

    .line 114
    .local v8, fixedSpsLen:I
    const/4 v9, 0x1

    :goto_8c
    add-int/lit8 v18, v7, 0x1

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_c2

    .line 115
    aget v18, v12, v9

    add-int/lit8 v19, v9, 0x1

    aget v19, v12, v19

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 116
    .local v14, spell:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v8, v8, v18

    .line 114
    add-int/lit8 v9, v9, 0x1

    goto :goto_8c

    .line 107
    .end local v8           #fixedSpsLen:I
    .end local v14           #spell:Ljava/lang/String;
    .restart local v5       #cand0:Ljava/lang/String;
    :cond_ab
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b8} :catch_b9

    goto :goto_7d

    .line 142
    .end local v5           #cand0:Ljava/lang/String;
    .end local v7           #fixedLen:I
    .end local v9           #i:I
    .end local v11           #pyLen:I
    .end local v12           #pyStarts:[I
    .end local v13           #pyStr:Ljava/lang/String;
    .end local v15           #spellingStart:I
    .end local v16           #starts:Ljava/lang/String;
    .end local v17           #str:Landroid/text/SpannableStringBuilder;
    :catch_b9
    move-exception v18

    move-object/from16 v6, v18

    .line 143
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
    const-string v18, ""

    .end local v6           #e:Landroid/os/RemoteException;
    :goto_c1
    return-object v18

    .line 119
    .restart local v7       #fixedLen:I
    .restart local v8       #fixedSpsLen:I
    .restart local v9       #i:I
    .restart local v11       #pyLen:I
    .restart local v12       #pyStarts:[I
    .restart local v13       #pyStr:Ljava/lang/String;
    .restart local v15       #spellingStart:I
    .restart local v16       #starts:Ljava/lang/String;
    .restart local v17       #str:Landroid/text/SpannableStringBuilder;
    :cond_c2
    add-int/lit8 v9, v7, 0x1

    :goto_c4
    :try_start_c4
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_107

    .line 120
    aget v18, v12, v9

    add-int/lit8 v19, v9, 0x1

    aget v19, v12, v19

    move-object v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 121
    .restart local v14       #spell:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v8, v8, v18

    .line 123
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    sub-int v18, v18, v19

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_fe

    .line 124
    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 126
    :cond_fe
    if-nez v8, :cond_104

    .line 127
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 119
    :cond_104
    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    .line 130
    .end local v14           #spell:Ljava/lang/String;
    :cond_107
    if-eqz v15, :cond_11b

    .line 131
    sget-object v18, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    const/16 v19, 0x0

    const/high16 v20, -0x100

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move v3, v15

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 133
    :cond_11b
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_138

    .line 134
    sget-object v18, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    const/high16 v20, -0x100

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v15

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 137
    :cond_138
    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    .line 138
    .local v10, position:I
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aget v18, v12, v18

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    sget-object v18, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v19

    const/high16 v20, -0x100

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v10

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_164
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_164} :catch_b9

    move-object/from16 v18, v17

    .line 141
    goto/16 :goto_c1
.end method

.method public getChosenCount()I
    .registers 3

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 302
    :goto_6
    return v1

    .line 299
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 300
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAllChosen()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    :try_start_2
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v2}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetSplStart()[I

    move-result-object v1

    .line 286
    .local v1, starts:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mDecoder:Lcom/google/android/inputmethod/pinyin/IDecoder;

    invoke-interface {v3}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imGetFixedLen()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_17

    move-result v3

    if-ne v2, v3, :cond_15

    move v2, v5

    .line 290
    .end local v1           #starts:[I
    :goto_14
    return v2

    .restart local v1       #starts:[I
    :cond_15
    move v2, v4

    .line 286
    goto :goto_14

    .line 287
    .end local v1           #starts:[I
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 288
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v5

    .line 290
    goto :goto_14
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->mTail:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
