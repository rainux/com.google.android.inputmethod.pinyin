.class public Lcom/google/android/inputmethod/pinyin/EventListener;
.super Landroid/content/BroadcastReceiver;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION:Ljava/lang/String; = "com.google.android.inputmethod.pinyingoogleservice.NOTIFICATION"

.field public static final ERROR_FAIL:I = 0x2

.field public static final ERROR_OK:I = 0x1

.field public static final EVENT_STARTED:I = 0x100

.field public static final EVENT_STOPPED:I = 0x200

.field public static final EVENT_SYNC:I = 0x1

.field public static final EVENT_SYNC_CLEAR:I = 0x4

.field public static final EVENT_SYNC_DOWNLOAD:I = 0x3

.field public static final EVENT_SYNC_UPLOAD:I = 0x2

.field public static final EVENT_UPDATE:I = 0x5

.field private static final PARAM_ERROR:Ljava/lang/String; = "error"

.field private static final PARAM_EVENT:Ljava/lang/String; = "event"

.field private static final PARAM_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG:Ljava/lang/String; = "EventListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/inputmethod/pinyin/EventListener$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    .line 55
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    .line 57
    return-void
.end method

.method public static notify(Landroid/content/Context;IILandroid/os/Bundle;)V
    .registers 8
    .parameter "context"
    .parameter "event"
    .parameter "error"
    .parameter "extra"

    .prologue
    const-string v3, "EventListener"

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.inputmethod.pinyingoogleservice.NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    if-eqz p3, :cond_1a

    .line 89
    const-string v1, "extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 90
    :cond_1a
    const-string v1, "EventListener"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 91
    const-string v1, "EventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast notification {event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_55
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/inputmethod/pinyin/EventListener$Listener;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/inputmethod/pinyin/EventListener$Listener;

    .line 73
    .local v1, listener:Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
    if-ne v1, p1, :cond_6

    .line 77
    .end local v1           #listener:Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
    :goto_14
    return-void

    .line 76
    :cond_15
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v8, "extra"

    const-string v7, "EventListener"

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/inputmethod/pinyin/EventListener$Listener;>;"
    const-string v5, "EventListener"

    const/4 v5, 0x2

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 100
    const-string v5, "EventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.inputmethod.pinyingoogleservice.NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_a0

    .line 102
    const-string v5, "event"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 103
    .local v4, type:I
    const-string v5, "error"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, error:I
    const/4 v1, 0x0

    .line 105
    .local v1, extra:Landroid/os/Bundle;
    const-string v5, "extra"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 106
    const-string v5, "extra"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 107
    :cond_4f
    iget-object v5, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/inputmethod/pinyin/EventListener$Listener;

    .line 110
    .local v3, l:Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
    const-string v5, "EventListener"

    const/4 v5, 0x3

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 111
    const-string v5, "EventListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch notification {event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extra="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_9c
    invoke-interface {v3, v4, v0, v1}, Lcom/google/android/inputmethod/pinyin/EventListener$Listener;->onNotification(IILandroid/os/Bundle;)V

    goto :goto_55

    .line 116
    .end local v0           #error:I
    .end local v1           #extra:Landroid/os/Bundle;
    .end local v3           #l:Lcom/google/android/inputmethod/pinyin/EventListener$Listener;
    .end local v4           #type:I
    :cond_a0
    return-void
.end method

.method public removeListener(Lcom/google/android/inputmethod/pinyin/EventListener$Listener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.android.inputmethod.pinyingoogleservice.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/EventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method
