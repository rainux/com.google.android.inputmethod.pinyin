.class public Lcom/google/android/inputmethod/pinyin/dev/CandidateView;
.super Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;
.source "CandidateView.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;,
        Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;
    }
.end annotation


# static fields
.field public static final CODE_CANDIDATE:I = 0x3

.field public static final CODE_PAGE_DOWN:I = 0x2

.field public static final CODE_PAGE_UP:I = 0x1


# instance fields
.field private mCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredHeight:I

.field private mKeyLeftArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mKeyLeftArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mKeyRightArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mKeyRightArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

.field private mListener:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;

.field private mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

.field private mRectLeftArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

.field private mRectRightArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

.field private mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

.field private mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    invoke-direct {v0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    .line 42
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 43
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$1;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/CandidateView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->addOnResourceChangedListener(Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setEventListener(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$EventListener;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v2, v2}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->measure(II)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/dev/CandidateView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    return-void
.end method

.method private computeLayout()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 25

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->peek()I

    move-result v18

    .line 133
    .local v18, start:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v9, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/inputmethod/pinyin/dev/SoftKey;>;"
    if-lez v18, :cond_ff

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyLeftArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectLeftArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->right:F

    move v10, v0

    .line 142
    .local v10, leftBound:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectRightArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->left:F

    move v14, v0

    .line 144
    .local v14, rightBound:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 146
    .local v17, sepWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v11

    .line 148
    .local v11, marginWidth:F
    move/from16 v19, v10

    .line 149
    .local v19, x:F
    move/from16 v7, v18

    .line 150
    .local v7, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    .line 151
    .local v12, paint:Landroid/graphics/Paint;
    :goto_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mCandidates:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_bd

    .line 153
    new-instance v16, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v21, 0x0

    add-float v22, v19, v17

    const/high16 v23, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    .line 154
    .local v16, sepRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    invoke-static/range {v16 .. v16}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createSeparatorSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v15

    .line 155
    .local v15, sep:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-float v19, v19, v17

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mCandidates:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 159
    .local v5, candStr:Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v6, v21, v22

    .line 160
    .local v6, candWidth:F
    add-float v21, v19, v6

    const/high16 v22, 0x4000

    mul-float v22, v22, v11

    add-float v20, v21, v22

    .line 161
    .local v20, x1:F
    cmpl-float v21, v20, v14

    if-lez v21, :cond_10d

    .line 172
    .end local v5           #candStr:Ljava/lang/String;
    .end local v6           #candWidth:F
    .end local v15           #sep:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v16           #sepRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .end local v20           #x1:F
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mCandidates:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_12c

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyRightArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->push(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->debug()V

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    return-object p0

    .line 138
    .end local v7           #index:I
    .end local v10           #leftBound:F
    .end local v11           #marginWidth:F
    .end local v12           #paint:Landroid/graphics/Paint;
    .end local v14           #rightBound:F
    .end local v17           #sepWidth:F
    .end local v19           #x:F
    .restart local p0
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyLeftArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    .line 164
    .restart local v5       #candStr:Ljava/lang/String;
    .restart local v6       #candWidth:F
    .restart local v7       #index:I
    .restart local v10       #leftBound:F
    .restart local v11       #marginWidth:F
    .restart local v12       #paint:Landroid/graphics/Paint;
    .restart local v14       #rightBound:F
    .restart local v15       #sep:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .restart local v16       #sepRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .restart local v17       #sepWidth:F
    .restart local v19       #x:F
    .restart local v20       #x1:F
    :cond_10d
    new-instance v13, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    move-object v0, v13

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    .line 165
    .local v13, rect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    invoke-static {v13, v7, v5}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createCandidateSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;ILjava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v8

    .line 166
    .local v8, key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    move/from16 v19, v20

    .line 168
    add-int/lit8 v7, v7, 0x1

    .line 170
    goto/16 :goto_66

    .line 175
    .end local v5           #candStr:Ljava/lang/String;
    .end local v6           #candWidth:F
    .end local v8           #key:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v13           #rect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .end local v15           #sep:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .end local v16           #sepRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    .end local v20           #x1:F
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyRightArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d8
.end method

.method private static createArrowSoftKey(ILcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 21
    .parameter "code"
    .parameter "rect"
    .parameter "icon"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0x12

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    move/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v7, p2

    move/from16 v11, p2

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method private static createCandidateSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;ILjava/lang/String;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 22
    .parameter "rect"
    .parameter "candIndex"
    .parameter "candStr"

    .prologue
    .line 86
    new-instance v5, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->left:F

    move v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;->right:F

    move v3, v0

    const v4, 0x3dcccccd

    add-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    .line 87
    .local v5, popupRect:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v2, 0x3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v10, 0x8

    const/16 v11, 0x12

    const/4 v12, -0x1

    const/16 v14, 0x9

    const/16 v15, 0x15

    const/16 v16, -0x1

    const/16 v18, 0xa

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move-object/from16 v13, p2

    move-object/from16 v17, p2

    invoke-direct/range {v1 .. v18}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v1
.end method

.method private static createSeparatorSoftKey(Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;
    .registers 19
    .parameter "rect"

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, -0x1

    const/16 v7, 0x14

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v17}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;IIILjava/lang/Object;I)V

    return-object v0
.end method

.method private initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 10
    .parameter "resource"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/high16 v3, 0x3f80

    .line 57
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    .line 58
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v0

    .line 61
    .local v0, w:F
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    invoke-direct {v1, v5, v5, v0, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectLeftArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    .line 62
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    sub-float v2, v3, v0

    invoke-direct {v1, v2, v5, v3, v3}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectRightArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    .line 63
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectLeftArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    invoke-static {v7, v1, v4}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createArrowSoftKey(ILcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyLeftArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 65
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectLeftArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    invoke-static {v7, v1, v4}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createArrowSoftKey(ILcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyLeftArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 67
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectRightArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v2, 0x11

    invoke-static {v6, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createArrowSoftKey(ILcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyRightArrowEnabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 69
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mRectRightArrow:Lcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;

    const/16 v2, 0x11

    invoke-static {v6, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->createArrowSoftKey(ILcom/google/android/inputmethod/pinyin/dev/SoftKey$Rect;I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/inputmethod/pinyin/dev/SoftKey;->setFlags(I)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mKeyRightArrowDisabled:Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    .line 72
    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mResource:Lcom/google/android/inputmethod/pinyin/dev/Resource;

    invoke-virtual {v2, v6}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mDesiredHeight:I

    .line 75
    return-void
.end method


# virtual methods
.method public onKey(ILjava/lang/Object;)V
    .registers 6
    .parameter "key"
    .parameter "data"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_32

    .line 202
    .end local p0
    .end local p2
    :cond_3
    :goto_3
    return-void

    .line 190
    .restart local p0
    .restart local p2
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->pop(I)I

    .line 191
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->computeLayout()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    goto :goto_3

    .line 194
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->computeLayout()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    goto :goto_3

    .line 197
    :pswitch_1a
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;

    if-eqz v1, :cond_3

    .line 198
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mCandidates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;->onCandidateTouched(ILjava/lang/String;)V

    goto :goto_3

    .line 188
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_4
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method public onLongPress(ILjava/lang/Object;)V
    .registers 3
    .parameter "key"
    .parameter "data"

    .prologue
    .line 205
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mScreenWidth:I

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mDesiredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setMeasuredDimension(II)V

    .line 108
    return-void
.end method

.method public setCandidateListener(Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mListener:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$CandidateListener;

    .line 126
    return-void
.end method

.method public setCandidates(Ljava/util/List;)V
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
    .line 116
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mCandidates:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->mPageStack:Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView$PageStack;->reset()V

    .line 118
    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->computeLayout()[Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/CandidateView;->setSoftKeys([Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 119
    return-void
.end method
