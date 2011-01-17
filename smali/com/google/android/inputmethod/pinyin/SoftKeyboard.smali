.class public Lcom/google/android/inputmethod/pinyin/SoftKeyboard;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    }
.end annotation


# static fields
.field private static final SHIFT_SCALE_FOR_SAVING:F = 30000.0f


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mCacheFlag:Z

.field private mCacheId:I

.field private mEnabledRowId:I

.field private mIsQwerty:Z

.field private mIsQwertyUpperCase:Z

.field private mKeyRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyXMargin:F

.field private mKeyYMargin:F

.field private mNewlyLoadedFlag:Z

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field public mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbCoreHeight:I

.field private mSkbCoreWidth:I

.field private mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

.field private mSkbXmlId:I

.field private mStickyFlag:Z

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILcom/google/android/inputmethod/pinyin/SkbTemplate;II)V
    .registers 7
    .parameter "skbXmlId"
    .parameter "skbTemplate"
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mNewlyLoadedFlag:Z

    .line 114
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyXMargin:F

    .line 117
    iput v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyYMargin:F

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 123
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbXmlId:I

    .line 124
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    .line 125
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    .line 126
    iput p4, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    .line 127
    return-void
.end method

.method private enableRow(I)Z
    .registers 6
    .parameter "rowId"

    .prologue
    .line 682
    const/4 v3, -0x1

    if-ne v3, p1, :cond_5

    const/4 v3, 0x0

    .line 695
    :goto_4
    return v3

    .line 684
    :cond_5
    const/4 v0, 0x0

    .line 685
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 686
    .local v2, rowNum:I
    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, row:I
    :goto_f
    if-ltz v1, :cond_1e

    .line 687
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    iget v3, v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    if-ne v3, p1, :cond_24

    .line 688
    const/4 v0, 0x1

    .line 692
    :cond_1e
    if-eqz v0, :cond_22

    .line 693
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    :cond_22
    move v3, v0

    .line 695
    goto :goto_4

    .line 686
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_f
.end method

.method private getPadding()Landroid/graphics/Rect;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 667
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 668
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 669
    .local v0, skbBg:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 671
    :goto_e
    return-object v1

    .line 670
    :cond_f
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 671
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mTmpRect:Landroid/graphics/Rect;

    goto :goto_e
.end method


# virtual methods
.method public addSoftKey(Lcom/google/android/inputmethod/pinyin/SoftKey;)Z
    .registers 8
    .parameter "softKey"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v4

    .line 211
    :goto_b
    return v2

    .line 197
    :cond_c
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 198
    .local v0, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    if-nez v0, :cond_1f

    move v2, v4

    goto :goto_b

    .line 199
    :cond_1f
    iget-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 201
    .local v1, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setSkbCoreSize(II)V

    .line 202
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget v2, p1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    iget v3, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_40

    .line 204
    iget v2, p1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    iput v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    .line 205
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTop:I

    .line 207
    :cond_40
    iget v2, p1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    iget v3, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_55

    .line 208
    iget v2, p1, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    iput v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    .line 209
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottom:I

    :cond_55
    move v2, v5

    .line 211
    goto :goto_b
.end method

.method public beginNewRow(IF)V
    .registers 6
    .parameter "rowId"
    .parameter "yStartingPos"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    .line 184
    :cond_b
    new-instance v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    invoke-direct {v0, p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;-><init>(Lcom/google/android/inputmethod/pinyin/SoftKeyboard;)V

    .line 185
    .local v0, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iput p1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    .line 186
    iput p2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    .line 187
    iput p2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    .line 188
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTop:I

    .line 189
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v1, v1

    iget v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottom:I

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 192
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public disableToggleState(IZ)V
    .registers 11
    .parameter "toggleStateId"
    .parameter "resetIfNotFound"

    .prologue
    .line 526
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 527
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_7
    if-ge v3, v4, :cond_2f

    .line 528
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 529
    .local v2, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v6, v2, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 530
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 531
    .local v1, keyNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_2c

    .line 532
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 533
    .local v5, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    instance-of v7, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    if-eqz v7, :cond_29

    .line 534
    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    .end local v5           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->disableToggleState(IZ)Z

    .line 531
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 527
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 539
    .end local v0           #i:I
    .end local v1           #keyNum:I
    .end local v2           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_2f
    return-void
.end method

.method public distanceOfNearestTwoKeys(FF)F
    .registers 25
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 408
    const v18, 0x7f7fffff

    .line 484
    :goto_b
    return v18

    .line 413
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v14

    .line 417
    .local v14, rowNum:I
    const v10, 0x7f7fffff

    .line 418
    .local v10, nearestDis:F
    const v11, 0x7f7fffff

    .line 419
    .local v11, nearestDis2:F
    const/4 v13, 0x0

    .local v13, row:I
    :goto_1d
    if-ge v13, v14, :cond_1d3

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 421
    .local v8, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    const/16 v18, -0x1

    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4f

    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4f

    .line 419
    :cond_4c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    .line 423
    :cond_4f
    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    move/from16 v18, v0

    const v19, 0x3d75c28f

    sub-float v18, v18, v19

    cmpl-float v18, v18, p2

    if-gtz v18, :cond_4c

    move-object v0, v8

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    move/from16 v18, v0

    const v19, 0x3d75c28f

    add-float v18, v18, v19

    cmpg-float v18, v18, p2

    if-lez v18, :cond_4c

    .line 426
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v16, v0

    .line 427
    .local v16, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v7

    .line 428
    .local v7, keyNum:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_75
    if-ge v6, v7, :cond_4c

    .line 429
    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 430
    .local v15, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    const v3, 0x7f7fffff

    .line 431
    .local v3, dis:F
    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    move/from16 v19, v0

    add-float v9, v18, v19

    .line 432
    .local v9, leftF:F
    const v18, 0x3ca3d70a

    add-float v9, v9, v18

    .line 433
    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    move/from16 v19, v0

    add-float v12, v18, v19

    .line 434
    .local v12, rightF:F
    const v18, 0x3ca3d70a

    sub-float v12, v12, v18

    .line 435
    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    move/from16 v19, v0

    add-float v17, v18, v19

    .line 436
    .local v17, topF:F
    const v18, 0x3d3851ec

    add-float v17, v17, v18

    .line 437
    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    move/from16 v19, v0

    add-float v2, v18, v19

    .line 438
    .local v2, bottomF:F
    const v18, 0x3d3851ec

    sub-float v2, v2, v18

    .line 440
    cmpg-float v18, p1, v9

    if-gez v18, :cond_137

    .line 441
    cmpg-float v18, p2, v17

    if-gez v18, :cond_fd

    .line 442
    sub-float v18, p1, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v18, v19

    .line 443
    .local v4, disX:F
    sub-float v18, p2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v18, v19

    .line 444
    .local v5, disY:F
    mul-float v18, v4, v4

    mul-float v19, v5, v5

    add-float v3, v18, v19

    .line 476
    .end local v4           #disX:F
    .end local v5           #disY:F
    :goto_f3
    cmpg-float v18, v3, v10

    if-gez v18, :cond_1cc

    .line 477
    move v11, v10

    .line 478
    move v10, v3

    .line 428
    :cond_f9
    :goto_f9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_75

    .line 445
    :cond_fd
    cmpl-float v18, p2, v2

    if-ltz v18, :cond_126

    .line 446
    sub-float v18, p1, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v18, v19

    .line 447
    .restart local v4       #disX:F
    sub-float v18, p2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v18, v19

    .line 448
    .restart local v5       #disY:F
    mul-float v18, v4, v4

    mul-float v19, v5, v5

    add-float v3, v18, v19

    .line 449
    goto :goto_f3

    .line 450
    .end local v4           #disX:F
    .end local v5           #disY:F
    :cond_126
    sub-float v18, v9, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v3, v18, v19

    .line 451
    mul-float/2addr v3, v3

    goto :goto_f3

    .line 453
    :cond_137
    cmpl-float v18, p1, v12

    if-ltz v18, :cond_1a0

    .line 454
    cmpg-float v18, p2, v17

    if-gez v18, :cond_164

    .line 455
    sub-float v18, p1, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v18, v19

    .line 456
    .restart local v4       #disX:F
    sub-float v18, p2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v18, v19

    .line 457
    .restart local v5       #disY:F
    mul-float v18, v4, v4

    mul-float v19, v5, v5

    add-float v3, v18, v19

    .line 458
    goto :goto_f3

    .end local v4           #disX:F
    .end local v5           #disY:F
    :cond_164
    cmpl-float v18, p2, v2

    if-ltz v18, :cond_18e

    .line 459
    sub-float v18, p1, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v4, v18, v19

    .line 460
    .restart local v4       #disX:F
    sub-float v18, p2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v5, v18, v19

    .line 461
    .restart local v5       #disY:F
    mul-float v18, v4, v4

    mul-float v19, v5, v5

    add-float v3, v18, v19

    .line 462
    goto/16 :goto_f3

    .line 463
    .end local v4           #disX:F
    .end local v5           #disY:F
    :cond_18e
    sub-float v18, p1, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v3, v18, v19

    .line 464
    mul-float/2addr v3, v3

    goto/16 :goto_f3

    .line 467
    :cond_1a0
    cmpg-float v18, p2, v17

    if-gez v18, :cond_1b6

    .line 468
    sub-float v18, v17, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v3, v18, v19

    .line 474
    :goto_1b3
    mul-float/2addr v3, v3

    goto/16 :goto_f3

    .line 469
    :cond_1b6
    cmpl-float v18, p2, v2

    if-ltz v18, :cond_1ca

    .line 470
    sub-float v18, p2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v3, v18, v19

    goto :goto_1b3

    .line 472
    :cond_1ca
    const/4 v3, 0x0

    goto :goto_1b3

    .line 479
    :cond_1cc
    cmpg-float v18, v3, v11

    if-gez v18, :cond_f9

    .line 480
    move v11, v3

    goto/16 :goto_f9

    .line 484
    .end local v2           #bottomF:F
    .end local v3           #dis:F
    .end local v6           #i:I
    .end local v7           #keyNum:I
    .end local v8           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v9           #leftF:F
    .end local v12           #rightF:F
    .end local v15           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v16           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    .end local v17           #topF:F
    :cond_1d3
    move v0, v10

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move v0, v11

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_b
.end method

.method public enableToggleState(IZ)V
    .registers 11
    .parameter "toggleStateId"
    .parameter "resetIfNotFound"

    .prologue
    .line 510
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 511
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_7
    if-ge v3, v4, :cond_2f

    .line 512
    iget-object v7, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 513
    .local v2, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v6, v2, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 514
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 515
    .local v1, keyNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v1, :cond_2c

    .line 516
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 517
    .local v5, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    instance-of v7, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    if-eqz v7, :cond_29

    .line 518
    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    .end local v5           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 515
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 511
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 523
    .end local v0           #i:I
    .end local v1           #keyNum:I
    .end local v2           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_2f
    return-void
.end method

.method public enableToggleStates(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;)V
    .registers 20
    .parameter "toggleStates"

    .prologue
    .line 542
    if-nez p1, :cond_3

    .line 582
    :goto_2
    return-void

    .line 544
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mRowIdToEnable:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->enableRow(I)Z

    .line 546
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwerty:Z

    move v2, v0

    .line 547
    .local v2, isQwerty:Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mQwertyUpperCase:Z

    move v3, v0

    .line 548
    .local v3, isQwertyUpperCase:Z
    if-eqz v2, :cond_66

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwerty:Z

    move v15, v0

    if-eqz v15, :cond_66

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwertyUpperCase:Z

    move v15, v0

    if-eq v15, v3, :cond_66

    const/4 v15, 0x1

    move v7, v15

    .line 550
    .local v7, needUpdateQwerty:Z
    :goto_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    move-object v13, v0

    .line 551
    .local v13, states:[I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStatesNum:I

    move v14, v0

    .line 553
    .local v14, statesNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 554
    .local v9, rowNum:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_3e
    if-ge v8, v9, :cond_b5

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 556
    .local v6, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    const/4 v15, -0x1

    move-object v0, v6

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_69

    iget v15, v6, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_69

    .line 554
    :cond_63
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 548
    .end local v6           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v7           #needUpdateQwerty:Z
    .end local v8           #row:I
    .end local v9           #rowNum:I
    .end local v13           #states:[I
    .end local v14           #statesNum:I
    :cond_66
    const/4 v15, 0x0

    move v7, v15

    goto :goto_2a

    .line 560
    .restart local v6       #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .restart local v7       #needUpdateQwerty:Z
    .restart local v8       #row:I
    .restart local v9       #rowNum:I
    .restart local v13       #states:[I
    .restart local v14       #statesNum:I
    :cond_69
    iget-object v11, v6, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 561
    .local v11, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .line 562
    .local v4, keyNum:I
    const/4 v5, 0x0

    .local v5, keyPos:I
    :goto_70
    if-ge v5, v4, :cond_63

    .line 563
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 564
    .local v10, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    instance-of v15, v10, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    if-eqz v15, :cond_9b

    .line 565
    const/4 v12, 0x0

    .local v12, statePos:I
    :goto_7d
    if-ge v12, v14, :cond_92

    .line 566
    move-object v0, v10

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    move-object v15, v0

    aget v16, v13, v12

    if-nez v12, :cond_8f

    const/16 v17, 0x1

    :goto_89
    invoke-virtual/range {v15 .. v17}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 565
    add-int/lit8 v12, v12, 0x1

    goto :goto_7d

    .line 566
    :cond_8f
    const/16 v17, 0x0

    goto :goto_89

    .line 569
    :cond_92
    if-nez v14, :cond_9b

    .line 570
    move-object v0, v10

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    move-object v12, v0

    .end local v12           #statePos:I
    invoke-virtual {v12}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->disableAllToggleStates()Z

    .line 573
    :cond_9b
    if-eqz v7, :cond_b2

    .line 574
    iget v15, v10, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    const/16 v16, 0x1d

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_b2

    iget v15, v10, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    const/16 v16, 0x36

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_b2

    .line 576
    invoke-virtual {v10, v3}, Lcom/google/android/inputmethod/pinyin/SoftKey;->changeCase(Z)V

    .line 562
    :cond_b2
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    .line 581
    .end local v4           #keyNum:I
    .end local v5           #keyPos:I
    .end local v6           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v10           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v11           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_b5
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwertyUpperCase:Z

    goto/16 :goto_2
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 275
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public getCacheFlag()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mCacheFlag:Z

    return v0
.end method

.method public getCacheId()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mCacheId:I

    return v0
.end method

.method public getKey(II)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 5
    .parameter "row"
    .parameter "location"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_24

    .line 303
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 304
    .local v0, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_24

    .line 305
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/inputmethod/pinyin/SoftKey;

    move-object v1, p0

    .line 308
    .end local v0           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :goto_23
    return-object v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public getKeyRowForDisplay(I)Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .registers 5
    .parameter "row"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_21

    .line 292
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 293
    .local v0, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    const/4 v1, -0x1

    iget v2, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    if-eq v1, v2, :cond_1f

    iget v1, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    if-ne v1, v2, :cond_21

    :cond_1f
    move-object v1, v0

    .line 298
    .end local v0           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    :goto_20
    return-object v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public getKeyXMargin()I
    .registers 4

    .prologue
    .line 259
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 260
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyXMargin:F

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyXMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getKeyYMargin()I
    .registers 4

    .prologue
    .line 264
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 265
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyYMargin:F

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->getKeyYMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getNewlyLoadedFlag()Z
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mNewlyLoadedFlag:Z

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 280
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public getRowNum()I
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 287
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 270
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbTemplate:Lcom/google/android/inputmethod/pinyin/SkbTemplate;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SkbTemplate;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public getSkbCoreHeight()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    return v0
.end method

.method public getSkbCoreWidth()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    return v0
.end method

.method public getSkbTotalHeight()I
    .registers 4

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 255
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbTotalWidth()I
    .registers 4

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 250
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbXmlId()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbXmlId:I

    return v0
.end method

.method public getStickyFlag()Z
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mStickyFlag:Z

    return v0
.end method

.method public loadBiasPref()V
    .registers 14

    .prologue
    const v12, 0x46ea6000

    .line 599
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 600
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v11

    if-nez v11, :cond_e

    .line 634
    :cond_d
    return-void

    .line 603
    :cond_e
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v11, :cond_d

    iget-boolean v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwerty:Z

    if-eqz v11, :cond_d

    .line 605
    const/4 v4, 0x0

    .line 606
    .local v4, keyNum:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_18
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_32

    .line 607
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 608
    .local v5, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v10, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 609
    .local v10, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v4, v11

    .line 606
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 612
    .end local v5           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v10           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_32
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v2

    .line 613
    .local v2, ime:Lcom/google/android/inputmethod/pinyin/PinyinIME;
    iget v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbXmlId:I

    invoke-virtual {v2, v11}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->loadBiasPereferenceForSkb(I)Ljava/lang/String;

    move-result-object v7

    .line 614
    .local v7, prefStr:Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 616
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, items:[Ljava/lang/String;
    array-length v6, v3

    .line 618
    .local v6, len:I
    mul-int/lit8 v11, v4, 0x2

    if-ne v11, v6, :cond_d

    .line 620
    const/4 v8, 0x0

    :goto_4a
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_d

    .line 621
    iget-object v11, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 622
    .restart local v5       #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v10, v5, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 623
    .restart local v10       #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_8e

    .line 624
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 626
    .local v9, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    mul-int/lit8 v11, v1, 0x2

    :try_start_6b
    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 627
    iget v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    div-float/2addr v11, v12

    iput v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 628
    mul-int/lit8 v11, v1, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    iput v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    .line 629
    iget v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    div-float/2addr v11, v12

    iput v11, v9, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_8b} :catch_91

    .line 623
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 620
    .end local v9           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_8e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 630
    .restart local v9       #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :catch_91
    move-exception v11

    goto :goto_8b
.end method

.method public mapToKey(FF)Lcom/google/android/inputmethod/pinyin/SoftKey;
    .registers 24
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 313
    const/16 v19, 0x0

    .line 402
    :goto_a
    return-object v19

    .line 318
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    .line 319
    .local v15, rowNum:I
    const/4 v14, 0x0

    .local v14, row:I
    :goto_16
    if-ge v14, v15, :cond_81

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 321
    .local v9, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    const/16 v19, -0x1

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_48

    .line 319
    :cond_45
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    .line 323
    :cond_48
    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    move/from16 v19, v0

    cmpl-float v19, v19, p2

    if-gtz v19, :cond_45

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    move/from16 v19, v0

    cmpg-float v19, v19, p2

    if-lez v19, :cond_45

    .line 325
    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v17, v0

    .line 326
    .local v17, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 327
    .local v8, keyNum:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_64
    if-ge v7, v8, :cond_45

    .line 328
    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 329
    .local v16, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    move-object/from16 v0, v16

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->inCoreAreaForResponse(FF)Z

    move-result v19

    if-eqz v19, :cond_7e

    move-object/from16 v19, v16

    .line 330
    goto :goto_a

    .line 327
    :cond_7e
    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    .line 337
    .end local v7           #i:I
    .end local v8           #keyNum:I
    .end local v9           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v16           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v17           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_81
    const/4 v12, 0x0

    .line 338
    .local v12, nearestKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    const v11, 0x7f7fffff

    .line 339
    .local v11, nearestDis:F
    const/4 v14, 0x0

    :goto_86
    if-ge v14, v15, :cond_23e

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 341
    .restart local v9       #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    const/16 v19, -0x1

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b8

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mRowId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mEnabledRowId:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b8

    .line 339
    :cond_b5
    add-int/lit8 v14, v14, 0x1

    goto :goto_86

    .line 343
    :cond_b8
    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    move/from16 v19, v0

    const v20, 0x3d75c28f

    sub-float v19, v19, v20

    cmpl-float v19, v19, p2

    if-gtz v19, :cond_b5

    move-object v0, v9

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    move/from16 v19, v0

    const v20, 0x3d75c28f

    add-float v19, v19, v20

    cmpg-float v19, v19, p2

    if-lez v19, :cond_b5

    .line 346
    move-object v0, v9

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v17, v0

    .line 347
    .restart local v17       #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 348
    .restart local v8       #keyNum:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_de
    if-ge v7, v8, :cond_b5

    .line 349
    move-object/from16 v0, v17

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 350
    .restart local v16       #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    const v4, 0x7f7fffff

    .line 351
    .local v4, dis:F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mLeftF:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    move/from16 v20, v0

    add-float v10, v19, v20

    .line 352
    .local v10, leftF:F
    const v19, 0x3ca3d70a

    add-float v10, v10, v19

    .line 353
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mRightF:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 354
    .local v13, rightF:F
    const v19, 0x3ca3d70a

    sub-float v13, v13, v19

    .line 355
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mTopF:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    move/from16 v20, v0

    add-float v18, v19, v20

    .line 356
    .local v18, topF:F
    const v19, 0x3d3851ec

    add-float v18, v18, v19

    .line 357
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mBottomF:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    move/from16 v20, v0

    add-float v3, v19, v20

    .line 358
    .local v3, bottomF:F
    const v19, 0x3d3851ec

    sub-float v3, v3, v19

    .line 360
    cmpg-float v19, p1, v10

    if-gez v19, :cond_1a9

    .line 361
    cmpg-float v19, p2, v18

    if-gez v19, :cond_16f

    .line 362
    sub-float v19, p1, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v19, v20

    .line 363
    .local v5, disX:F
    sub-float v19, p2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .line 364
    .local v6, disY:F
    mul-float v19, v5, v5

    mul-float v20, v6, v6

    add-float v4, v19, v20

    .line 396
    .end local v5           #disX:F
    .end local v6           #disY:F
    :goto_164
    cmpg-float v19, v4, v11

    if-gez v19, :cond_16b

    .line 397
    move v11, v4

    .line 398
    move-object/from16 v12, v16

    .line 348
    :cond_16b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_de

    .line 365
    :cond_16f
    cmpl-float v19, p2, v3

    if-ltz v19, :cond_198

    .line 366
    sub-float v19, p1, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v19, v20

    .line 367
    .restart local v5       #disX:F
    sub-float v19, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .line 368
    .restart local v6       #disY:F
    mul-float v19, v5, v5

    mul-float v20, v6, v6

    add-float v4, v19, v20

    .line 369
    goto :goto_164

    .line 370
    .end local v5           #disX:F
    .end local v6           #disY:F
    :cond_198
    sub-float v19, v10, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v4, v19, v20

    .line 371
    mul-float/2addr v4, v4

    goto :goto_164

    .line 373
    :cond_1a9
    cmpl-float v19, p1, v13

    if-ltz v19, :cond_212

    .line 374
    cmpg-float v19, p2, v18

    if-gez v19, :cond_1d6

    .line 375
    sub-float v19, p1, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v19, v20

    .line 376
    .restart local v5       #disX:F
    sub-float v19, p2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .line 377
    .restart local v6       #disY:F
    mul-float v19, v5, v5

    mul-float v20, v6, v6

    add-float v4, v19, v20

    .line 378
    goto :goto_164

    .end local v5           #disX:F
    .end local v6           #disY:F
    :cond_1d6
    cmpl-float v19, p2, v3

    if-ltz v19, :cond_200

    .line 379
    sub-float v19, p1, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v5, v19, v20

    .line 380
    .restart local v5       #disX:F
    sub-float v19, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v6, v19, v20

    .line 381
    .restart local v6       #disY:F
    mul-float v19, v5, v5

    mul-float v20, v6, v6

    add-float v4, v19, v20

    .line 382
    goto/16 :goto_164

    .line 383
    .end local v5           #disX:F
    .end local v6           #disY:F
    :cond_200
    sub-float v19, p1, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v4, v19, v20

    .line 384
    mul-float/2addr v4, v4

    goto/16 :goto_164

    .line 387
    :cond_212
    cmpg-float v19, p2, v18

    if-gez v19, :cond_228

    .line 388
    sub-float v19, v18, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v4, v19, v20

    .line 394
    :goto_225
    mul-float/2addr v4, v4

    goto/16 :goto_164

    .line 389
    :cond_228
    cmpl-float v19, p2, v3

    if-ltz v19, :cond_23c

    .line 390
    sub-float v19, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v4, v19, v20

    goto :goto_225

    .line 392
    :cond_23c
    const/4 v4, 0x0

    goto :goto_225

    .end local v3           #bottomF:F
    .end local v4           #dis:F
    .end local v7           #i:I
    .end local v8           #keyNum:I
    .end local v9           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v10           #leftF:F
    .end local v13           #rightF:F
    .end local v16           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    .end local v17           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    .end local v18           #topF:F
    :cond_23e
    move-object/from16 v19, v12

    .line 402
    goto/16 :goto_a
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    :cond_9
    return-void
.end method

.method public resetKeyShift()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 585
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v5, :cond_6

    .line 596
    :cond_5
    return-void

    .line 587
    :cond_6
    const/4 v2, 0x0

    .local v2, row:I
    :goto_7
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 588
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 589
    .local v1, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v4, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 590
    .local v4, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2d

    .line 591
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 592
    .local v3, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    iput v6, v3, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    .line 593
    iput v6, v3, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 587
    .end local v3           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public saveBiasPref()V
    .registers 15

    .prologue
    const v12, 0x46ea6000

    const-string v13, ","

    .line 637
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/Environment;->getInstance()Lcom/google/android/inputmethod/pinyin/Environment;

    move-result-object v0

    .line 638
    .local v0, env:Lcom/google/android/inputmethod/pinyin/Environment;
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/Environment;->doKeyRegionAdaptation()Z

    move-result v10

    if-nez v10, :cond_10

    .line 664
    :cond_f
    :goto_f
    return-void

    .line 641
    :cond_10
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v10, :cond_f

    iget-boolean v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwerty:Z

    if-eqz v10, :cond_f

    .line 643
    const-string v4, ""

    .line 644
    .local v4, prefStr:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, row:I
    :goto_1b
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9c

    .line 645
    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 646
    .local v3, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v9, v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 647
    .local v9, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_99

    .line 648
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 653
    .local v8, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    iget v10, v8, Lcom/google/android/inputmethod/pinyin/SoftKey;->mXShift:F

    mul-float/2addr v10, v12

    float-to-int v6, v10

    .line 654
    .local v6, shiftX:I
    iget v10, v8, Lcom/google/android/inputmethod/pinyin/SoftKey;->mYShift:F

    mul-float/2addr v10, v12

    float-to-int v7, v10

    .line 655
    .local v7, shiftY:I
    if-nez v5, :cond_46

    if-eqz v1, :cond_59

    :cond_46
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    :cond_59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 644
    .end local v6           #shiftX:I
    .end local v7           #shiftY:I
    .end local v8           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 662
    .end local v1           #i:I
    .end local v3           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v9           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_9c
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->getLastInstance()Lcom/google/android/inputmethod/pinyin/PinyinIME;

    move-result-object v2

    .line 663
    .local v2, ime:Lcom/google/android/inputmethod/pinyin/PinyinIME;
    iget v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbXmlId:I

    invoke-virtual {v2, v10, v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->saveBiasPereferenceForSkb(ILjava/lang/String;)Z

    goto/16 :goto_f
.end method

.method public setCacheId(I)V
    .registers 2
    .parameter "cacheId"

    .prologue
    .line 142
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mCacheId:I

    .line 143
    return-void
.end method

.method public setFlags(ZZZZ)V
    .registers 5
    .parameter "cacheFlag"
    .parameter "stickyFlag"
    .parameter "isQwerty"
    .parameter "isQwertyUpperCase"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mCacheFlag:Z

    .line 132
    iput-boolean p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mStickyFlag:Z

    .line 133
    iput-boolean p3, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwerty:Z

    .line 134
    iput-boolean p4, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwertyUpperCase:Z

    .line 135
    return-void
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "balloonBg"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method public setKeyMargins(FF)V
    .registers 3
    .parameter "xMargin"
    .parameter "yMargin"

    .prologue
    .line 162
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyXMargin:F

    .line 163
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyYMargin:F

    .line 164
    return-void
.end method

.method public setNewlyLoadedFlag(Z)V
    .registers 2
    .parameter "newlyLoadedFlag"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mNewlyLoadedFlag:Z

    .line 176
    return-void
.end method

.method public setPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "popupBg"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 155
    return-void
.end method

.method public setSkbBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "skbBg"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 151
    return-void
.end method

.method public setSkbCoreSize(II)V
    .registers 10
    .parameter "skbCoreWidth"
    .parameter "skbCoreHeight"

    .prologue
    .line 221
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    if-ne p1, v5, :cond_d

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    if-ne p2, v5, :cond_d

    .line 238
    :cond_c
    :goto_c
    return-void

    .line 225
    :cond_d
    const/4 v2, 0x0

    .local v2, row:I
    :goto_e
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_44

    .line 226
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 227
    .local v1, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    int-to-float v5, p2

    iget v6, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottomF:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mBottom:I

    .line 228
    int-to-float v5, p2

    iget v6, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTopF:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mTop:I

    .line 230
    iget-object v4, v1, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 231
    .local v4, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    .line 232
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 233
    .local v3, softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    invoke-virtual {v3, p1, p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->setSkbCoreSize(II)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 225
    .end local v3           #softKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 236
    .end local v0           #i:I
    .end local v1           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v4           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_44
    iput p1, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    .line 237
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    goto :goto_c
.end method

.method public switchQwertyMode(IZ)V
    .registers 13
    .parameter "toggle_state_id"
    .parameter "upperCase"

    .prologue
    .line 488
    iget-boolean v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mIsQwerty:Z

    if-nez v8, :cond_5

    .line 507
    :cond_4
    return-void

    .line 490
    :cond_5
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 491
    .local v5, rowNum:I
    const/4 v4, 0x0

    .local v4, row:I
    :goto_c
    if-ge v4, v5, :cond_4

    .line 492
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 493
    .local v3, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v7, v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 494
    .local v7, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 495
    .local v2, keyNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v2, :cond_43

    .line 496
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/inputmethod/pinyin/SoftKey;

    .line 497
    .local v6, sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    instance-of v8, v6, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    if-eqz v8, :cond_31

    .line 498
    move-object v0, v6

    check-cast v0, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lcom/google/android/inputmethod/pinyin/SoftKeyToggle;->enableToggleState(IZ)Z

    .line 501
    :cond_31
    iget v8, v6, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_40

    iget v8, v6, Lcom/google/android/inputmethod/pinyin/SoftKey;->mKeyCode:I

    const/16 v9, 0x36

    if-gt v8, v9, :cond_40

    .line 503
    invoke-virtual {v6, p2}, Lcom/google/android/inputmethod/pinyin/SoftKey;->changeCase(Z)V

    .line 495
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 491
    .end local v6           #sKey:Lcom/google/android/inputmethod/pinyin/SoftKey;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    .prologue
    const-string v11, "\n"

    .line 700
    const-string v7, "------------------SkbInfo----------------------\n"

    .line 701
    .local v7, str:Ljava/lang/String;
    const-string v0, "-----------------------------------------------\n"

    .line 702
    .local v0, endStr:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Width: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreWidth:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Height: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mSkbCoreHeight:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KeyRowNum: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8c

    const-string v9, "0"

    :goto_6e
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 707
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v8, :cond_aa

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 718
    :goto_8b
    return-object v8

    .line 704
    :cond_8c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_6e

    .line 708
    :cond_aa
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 709
    .local v5, rowNum:I
    const/4 v4, 0x0

    .local v4, row:I
    :goto_b1
    if-ge v4, v5, :cond_fd

    .line 710
    iget-object v8, p0, Lcom/google/android/inputmethod/pinyin/SoftKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;

    .line 711
    .local v3, keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    iget-object v6, v3, Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 712
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 713
    .local v2, keyNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_fa

    .line 714
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/inputmethod/pinyin/SoftKey;

    invoke-virtual {v8}, Lcom/google/android/inputmethod/pinyin/SoftKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 709
    :cond_fa
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 718
    .end local v1           #i:I
    .end local v2           #keyNum:I
    .end local v3           #keyRow:Lcom/google/android/inputmethod/pinyin/SoftKeyboard$KeyRow;
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/inputmethod/pinyin/SoftKey;>;"
    :cond_fd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8b
.end method
