.class Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;
.super Landroid/os/Handler;
.source "PinyinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTimer"
.end annotation


# instance fields
.field private mParentLocation:[I

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method private constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 3
    .parameter

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1968
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;Lcom/google/android/inputmethod/pinyin/PinyinIME$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1967
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;-><init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V

    return-void
.end method


# virtual methods
.method cancelShowing()V
    .registers 2

    .prologue
    .line 1980
    :try_start_0
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1981
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1983
    :cond_15
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 1987
    :goto_18
    return-void

    .line 1984
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method postShowFloatingWindow()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1971
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1973
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1974
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$800(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1975
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->post(Ljava/lang/Runnable;)Z

    .line 1976
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1990
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/CandidatesContainer;->getLocationInWindow([I)V

    .line 1992
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1994
    :try_start_19
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1000(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/CandidatesContainer;

    move-result-object v1

    const/16 v2, 0x33

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v5}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_19 .. :try_end_3f} :catch_71

    .line 2007
    :goto_3f
    return-void

    .line 2001
    :cond_40
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->mParentLocation:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$PopupTimer;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$900(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_3f

    .line 1997
    :catch_71
    move-exception v0

    goto :goto_3f
.end method
