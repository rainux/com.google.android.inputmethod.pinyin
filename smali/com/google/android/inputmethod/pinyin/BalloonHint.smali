.class public Lcom/google/android/inputmethod/pinyin/BalloonHint;
.super Landroid/widget/PopupWindow;
.source "BalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/BalloonHint$1;,
        Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;,
        Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;
    }
.end annotation


# static fields
.field public static final TIME_DELAY_DISMISS:I = 0xc8

.field public static final TIME_DELAY_SHOW:I


# instance fields
.field private mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

.field mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

.field private mContext:Landroid/content/Context;

.field private mForceDismiss:Z

.field private mMeasureSpecMode:I

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mParent:Landroid/view/View;

.field private mParentLocationInWindow:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .registers 8
    .parameter "context"
    .parameter "parent"
    .parameter "measureSpecMode"
    .parameter "alwaysShowFullLabel"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    .line 87
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    .line 92
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParent:Landroid/view/View;

    .line 93
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mMeasureSpecMode:I

    .line 95
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setInputMethodMode(I)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setTouchable(Z)V

    .line 97
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    new-instance v0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;-><init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    .line 100
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setClickable(Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setContentView(Landroid/view/View;)V

    .line 103
    new-instance v0, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;-><init>(Lcom/google/android/inputmethod/pinyin/BalloonHint;Lcom/google/android/inputmethod/pinyin/BalloonHint$1;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/inputmethod/pinyin/BalloonHint;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/BalloonHint;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParent:Landroid/view/View;

    return-object v0
.end method

.method private setBalloonSize(II)V
    .registers 13
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 238
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mMeasureSpecMode:I

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 240
    .local v5, widthMeasureSpec:I
    iget v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mMeasureSpecMode:I

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 242
    .local v0, heightMeasureSpec:I
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v6, v5, v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->measure(II)V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getWidth()I

    move-result v4

    .line 245
    .local v4, oldWidth:I
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getHeight()I

    move-result v3

    .line 246
    .local v3, oldHeight:I
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getPaddingRight()I

    move-result v7

    add-int v2, v6, v7

    .line 248
    .local v2, newWidth:I
    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->getPaddingBottom()I

    move-result v7

    add-int v1, v6, v7

    .line 250
    .local v1, newHeight:I
    invoke-virtual {p0, v2}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setWidth(I)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setHeight(I)V

    .line 263
    iput-boolean v9, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mForceDismiss:Z

    .line 264
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 265
    sub-int v6, v4, v2

    if-gt v6, v8, :cond_53

    sub-int v6, v2, v4

    if-le v6, v8, :cond_57

    :cond_53
    move v6, v8

    :goto_54
    iput-boolean v6, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mForceDismiss:Z

    .line 267
    :cond_56
    return-void

    :cond_57
    move v6, v9

    .line 265
    goto :goto_54
.end method


# virtual methods
.method public delayedDismiss(J)V
    .registers 11
    .parameter "delay"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    const/4 v5, -0x1

    .line 216
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 217
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 218
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->getAction()I

    move-result v7

    .line 219
    .local v7, pendingAction:I
    cmp-long v0, v1, p1

    if-eqz v0, :cond_22

    if-eq v3, v7, :cond_22

    .line 220
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->run()V

    .line 223
    .end local v7           #pendingAction:I
    :cond_22
    cmp-long v0, p1, v1

    if-gtz v0, :cond_2a

    .line 224
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->dismiss()V

    .line 229
    :goto_29
    return-void

    .line 226
    :cond_2a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    const/4 v4, 0x0

    move-wide v1, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_29
.end method

.method public delayedShow(J[I)V
    .registers 11
    .parameter "delay"
    .parameter "locationInParent"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 185
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 186
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 188
    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2e

    .line 189
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParent:Landroid/view/View;

    const/16 v1, 0x33

    const/4 v2, 0x0

    aget v2, p3, v2

    aget v4, p3, v3

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    aget v3, v5, v3

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->showAtLocation(Landroid/view/View;III)V

    .line 197
    :goto_2d
    return-void

    .line 194
    :cond_2e
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    move-wide v1, p1

    move-object v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_2d
.end method

.method public delayedUpdate(J[III)V
    .registers 13
    .parameter "delay"
    .parameter "locationInParent"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->invalidate()V

    .line 202
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 205
    :cond_13
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2e

    .line 206
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 207
    const/4 v0, 0x0

    aget v0, p3, v0

    aget v1, p3, v3

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mParentLocationInWindow:[I

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p4, p5}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->update(IIII)V

    .line 213
    :goto_2d
    return-void

    .line 210
    :cond_2e
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    const/4 v3, 0x3

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->startTimer(JI[III)V

    goto :goto_2d
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public needForceDismiss()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mForceDismiss:Z

    return v0
.end method

.method public removeTimer()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->isPending()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonTimer:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonTimer;->removeTimer()Z

    .line 235
    :cond_d
    return-void
.end method

.method public setBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_a

    .line 125
    :goto_9
    return-void

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    if-eqz p1, :cond_17

    .line 121
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_9

    .line 123
    :cond_17
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9
.end method

.method public setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V
    .registers 5
    .parameter "icon"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0, p1}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-direct {p0, p2, p3}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonSize(II)V

    .line 161
    return-void
.end method

.method public setBalloonConfig(Ljava/lang/String;FZIII)V
    .registers 8
    .parameter "label"
    .parameter "textSize"
    .parameter "textBold"
    .parameter "textColor"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/BalloonHint;->mBalloonView:Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/inputmethod/pinyin/BalloonHint$BalloonView;->setTextConfig(Ljava/lang/String;FZI)V

    .line 144
    invoke-direct {p0, p5, p6}, Lcom/google/android/inputmethod/pinyin/BalloonHint;->setBalloonSize(II)V

    .line 145
    return-void
.end method
