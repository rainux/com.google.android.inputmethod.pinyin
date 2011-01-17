.class final Lcom/android/inputmethod/latin/ContactsDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ContactsDictionary;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "self"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-static {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$000(Lcom/android/inputmethod/latin/ContactsDictionary;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 58
    :try_start_7
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary$1;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$102(Lcom/android/inputmethod/latin/ContactsDictionary;Z)Z

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
