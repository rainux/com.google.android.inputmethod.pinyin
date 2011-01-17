.class Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;
.super Landroid/os/Handler;
.source "CandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PressTimer"
.end annotation


# instance fields
.field private mActiveCandOfPage:I

.field private mPageNoToShow:I

.field private mTimerPending:Z

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/CandidateView;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/CandidateView;)V
    .registers 3
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/CandidateView;

    .line 758
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    .line 759
    return-void
.end method


# virtual methods
.method public getActiveCandOfPageToShow()I
    .registers 2

    .prologue
    .line 774
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mActiveCandOfPage:I

    return v0
.end method

.method public getPageToShow()I
    .registers 2

    .prologue
    .line 770
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mPageNoToShow:I

    return v0
.end method

.method public isPending()Z
    .registers 2

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    return v0
.end method

.method public removeTimer()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    if-eqz v0, :cond_c

    .line 779
    iput-boolean v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    .line 780
    invoke-virtual {p0, p0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 781
    const/4 v0, 0x1

    .line 783
    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method public run()V
    .registers 5

    .prologue
    .line 791
    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mPageNoToShow:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mActiveCandOfPage:I

    if-ltz v0, :cond_17

    .line 793
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/CandidateView;

    iget v1, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mPageNoToShow:I

    iget v2, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mActiveCandOfPage:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/CandidateView;->showPage(IIZ)V

    .line 794
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/CandidateView;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->invalidate()V

    .line 796
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    .line 797
    return-void
.end method

.method public startTimer(JII)V
    .registers 6
    .parameter "afterMillis"
    .parameter "pageNo"
    .parameter "activeInPage"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->this$0:Lcom/google/android/inputmethod/pinyin/CandidateView;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView;->access$000(Lcom/google/android/inputmethod/pinyin/CandidateView;)Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->removeTimer()Z

    .line 763
    invoke-virtual {p0, p0, p1, p2}, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mTimerPending:Z

    .line 765
    iput p3, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mPageNoToShow:I

    .line 766
    iput p4, p0, Lcom/google/android/inputmethod/pinyin/CandidateView$PressTimer;->mActiveCandOfPage:I

    .line 767
    return-void
.end method
