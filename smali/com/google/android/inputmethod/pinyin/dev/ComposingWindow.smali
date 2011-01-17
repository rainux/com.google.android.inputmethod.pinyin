.class public Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;
.super Ljava/lang/Object;
.source "ComposingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;
    }
.end annotation


# instance fields
.field private mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

.field private mParent:Landroid/view/View;

.field private mWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 6
    .parameter "parent"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mParent:Landroid/view/View;

    .line 28
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-direct {v0, p2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    .line 29
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    .line 30
    new-instance v0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-direct {v0, p2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    .line 31
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->setClickable(Z)V

    .line 32
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 35
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v0, v2}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->setFocusable(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 58
    return-void
.end method

.method public show(Ljava/lang/CharSequence;)V
    .registers 11
    .parameter "text"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 39
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v3, p1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->getMeasuredWidth()I

    move-result v2

    .line 41
    .local v2, w:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mComposingView:Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;

    invoke-virtual {v3}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow$ComposingView;->getMeasuredHeight()I

    move-result v0

    .line 42
    .local v0, h:I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 43
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 45
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 46
    .local v1, parentLoc:[I
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mParent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 48
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 49
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    aget v4, v1, v8

    add-int/lit8 v4, v4, 0x0

    aget v5, v1, v6

    mul-int/lit8 v6, v0, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 54
    :goto_3b
    return-void

    .line 51
    :cond_3c
    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->mParent:Landroid/view/View;

    aget v5, v1, v8

    add-int/lit8 v5, v5, 0x0

    aget v6, v1, v6

    mul-int/lit8 v7, v0, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v8, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3b
.end method
