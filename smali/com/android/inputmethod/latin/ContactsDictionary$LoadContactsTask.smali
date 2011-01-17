.class Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;
.super Landroid/os/AsyncTask;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ContactsDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ContactsDictionary;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/ContactsDictionary;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ContactsDictionary;Lcom/android/inputmethod/latin/ContactsDictionary$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;-><init>(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$300()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1e

    .line 161
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-static {v0, v6}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$400(Lcom/android/inputmethod/latin/ContactsDictionary;Landroid/database/Cursor;)V

    .line 163
    :cond_1e
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$502(Lcom/android/inputmethod/latin/ContactsDictionary;J)J

    .line 164
    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    invoke-static {v0}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$000(Lcom/android/inputmethod/latin/ContactsDictionary;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_7
    iget-object v1, p0, Lcom/android/inputmethod/latin/ContactsDictionary$LoadContactsTask;->this$0:Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/inputmethod/latin/ContactsDictionary;->access$602(Lcom/android/inputmethod/latin/ContactsDictionary;Z)Z

    .line 172
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    .line 173
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 174
    return-void

    .line 172
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method
