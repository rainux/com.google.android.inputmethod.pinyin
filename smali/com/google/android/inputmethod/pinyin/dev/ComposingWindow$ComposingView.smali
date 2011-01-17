.class Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;
.super Landroid/view/View;
.source "ComposingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComposingView"
.end annotation


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field mDesiredHeight:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mPaintCandidate:Landroid/graphics/Paint;

.field private mPaintForUnknown:Landroid/graphics/Paint;

.field private mPaintSpelling:Landroid/graphics/Paint;

.field private mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

.field mScreenHeight:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    .line 76
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView$1;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView$1;-><init>(Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->addOnResourceChangedListener(Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mResourceManager:Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    return-void
.end method

.method private initFromResources(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 6
    .parameter "resource"

    .prologue
    .line 85
    const/16 v2, 0x1e

    invoke-virtual {p1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    .line 88
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintSpelling:Landroid/graphics/Paint;

    .line 89
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintForUnknown:Landroid/graphics/Paint;

    .line 90
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 92
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mScreenHeight:I

    .line 94
    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mScreenHeight:I

    int-to-float v2, v2

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getFloat(I)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mDesiredHeight:I

    .line 96
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 97
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 22
    .parameter "canvas"

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->getMeasuredHeight()I

    move-result v9

    .line 138
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v16, v0

    if-eqz v16, :cond_1d0

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object v14, v0

    check-cast v14, Landroid/text/Spannable;

    .line 144
    .local v14, text:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v7, v16, v17

    .line 145
    .local v7, fontHeight:F
    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v7

    const/high16 v17, 0x4000

    div-float v10, v16, v17

    .line 147
    .local v10, paddingY:F
    const-string v5, ""

    .line 148
    .local v5, candidate:Ljava/lang/String;
    const-string v12, ""

    .line 150
    .local v12, spelling:Ljava/lang/String;
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 151
    .local v13, start:I
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 152
    .local v6, end:I
    if-ltz v13, :cond_c4

    if-le v6, v13, :cond_c4

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v10

    add-float v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 158
    :cond_c4
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 159
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 160
    if-ltz v13, :cond_133

    if-le v6, v13, :cond_133

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v10

    add-float v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintSpelling:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    :cond_133
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 168
    sget-object v16, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 169
    if-ltz v13, :cond_1cf

    if-le v6, v13, :cond_1cf

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v13

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 171
    .local v15, unknown:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintForUnknown:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintForUnknown:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v8, v16, v17

    .line 172
    .local v8, fontHeight2:F
    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v8

    sub-float v11, v16, v10

    .line 173
    .local v11, paddingY2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintSpelling:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v11

    add-float v17, v17, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintForUnknown:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 184
    .end local v5           #candidate:Ljava/lang/String;
    .end local v6           #end:I
    .end local v8           #fontHeight2:F
    .end local v11           #paddingY2:F
    .end local v12           #spelling:Ljava/lang/String;
    .end local v13           #start:I
    .end local v14           #text:Landroid/text/Spannable;
    .end local v15           #unknown:Ljava/lang/String;
    :cond_1cf
    :goto_1cf
    return-void

    .line 179
    .end local v7           #fontHeight:F
    .end local v10           #paddingY:F
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v17

    sub-float v7, v16, v17

    .line 180
    .restart local v7       #fontHeight:F
    move v0, v9

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v7

    const/high16 v17, 0x4000

    div-float v10, v16, v17

    .line 181
    .restart local v10       #paddingY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v10

    add-float v18, v18, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1cf
.end method

.method public onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, width:F
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_80

    .line 103
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    .line 105
    .local v2, text:Landroid/text/Spannable;
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 106
    .local v1, start:I
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_CANDIDATES:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, end:I
    if-ltz v1, :cond_2c

    if-le v0, v1, :cond_2c

    .line 108
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    .line 111
    :cond_2c
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 112
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_SPELLING:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 113
    if-ltz v1, :cond_4d

    if-le v0, v1, :cond_4d

    .line 114
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintSpelling:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    .line 117
    :cond_4d
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 118
    sget-object v4, Lcom/google/android/inputmethod/pinyin/dev/ComposingText;->TYPE_UNKNOWN:Ljava/lang/Object;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 119
    if-ltz v1, :cond_6e

    if-le v0, v1, :cond_6e

    .line 120
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintForUnknown:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    .line 125
    .end local v0           #end:I
    .end local v1           #start:I
    .end local v2           #text:Landroid/text/Spannable;
    :cond_6e
    :goto_6e
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaddingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 126
    float-to-int v4, v3

    iget v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mDesiredHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->setMeasuredDimension(II)V

    .line 127
    return-void

    .line 123
    :cond_80
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mPaintCandidate:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_6e
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->mText:Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0, v0, v0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->onMeasure(II)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->invalidate()V

    .line 133
    return-void
.end method
