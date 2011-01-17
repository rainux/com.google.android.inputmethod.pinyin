.class public Lcom/google/android/inputmethod/pinyin/BroadcastMonitor;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastMonitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/inputmethod/pinyin/DataService;->control(Landroid/content/Context;I)V

    .line 27
    return-void
.end method
