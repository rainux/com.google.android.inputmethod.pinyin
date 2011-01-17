.class public Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;
.super Ljava/lang/Object;
.source "GridButtonWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;,
        Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;
    }
.end annotation


# instance fields
.field private mCountPerRow:I

.field private mHeight:I

.field private mLeft:I

.field private mListener:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

.field private mParent:Landroid/view/View;

.field private mTop:I

.field private mView:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

.field private mWidth:I

.field private mWindow:Landroid/widget/PopupWindow;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;IIII)V
    .registers 11
    .parameter "parent"
    .parameter "context"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mParent:Landroid/view/View;

    .line 41
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    .line 42
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 44
    new-instance v1, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    invoke-direct {v1, p0, p2}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;-><init>(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mView:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    .line 45
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, layout:Landroid/widget/LinearLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mView:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/inputmethod/pinyin/dev/ResourceManager;->getCurrentResource()Lcom/google/android/inputmethod/pinyin/dev/Resource;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/dev/Resource;->getImage(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 52
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mX:I

    .line 53
    iput p4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mY:I

    .line 54
    iput p5, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWidth:I

    .line 55
    iput p6, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mHeight:I

    .line 56
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mCountPerRow:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mListener:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 79
    return-void
.end method

.method public onDismiss()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mListener:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;->onDismiss()V

    .line 83
    return-void
.end method

.method public setOnClickListener(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mListener:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$OnClickListener;

    .line 90
    return-void
.end method

.method public show(Ljava/util/List;I)V
    .registers 8
    .parameter
    .parameter "countPerRow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, labels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iput p2, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mCountPerRow:I

    .line 64
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mView:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->access$000(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Ljava/util/List;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 66
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 67
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 68
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mX:I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mY:I

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWidth:I

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 72
    :goto_2a
    return-void

    .line 70
    :cond_2b
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mParent:Landroid/view/View;

    const/16 v2, 0x11

    iget v3, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mX:I

    iget v4, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;->mY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2a
.end method
