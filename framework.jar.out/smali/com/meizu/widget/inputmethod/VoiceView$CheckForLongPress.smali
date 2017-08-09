.class Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;
.super Ljava/lang/Object;
.source "VoiceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/inputmethod/VoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalPressToken:J

.field final synthetic this$0:Lcom/meizu/widget/inputmethod/VoiceView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/inputmethod/VoiceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/widget/inputmethod/VoiceView;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberPressToken(J)V
    .locals 1
    .param p1, "token"    # J

    .prologue
    iput-wide p1, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->mOriginalPressToken:J

    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->mOriginalPressToken:J

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-static {v2}, Lcom/meizu/widget/inputmethod/VoiceView;->-get0(Lcom/meizu/widget/inputmethod/VoiceView;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iget-boolean v0, v0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-static {v0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->-set2(Lcom/meizu/widget/inputmethod/VoiceView;I)I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iput-boolean v4, v0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    iput-boolean v4, v0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-static {v0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->-wrap0(Lcom/meizu/widget/inputmethod/VoiceView;I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->this$0:Lcom/meizu/widget/inputmethod/VoiceView;

    invoke-virtual {v0}, Lcom/meizu/widget/inputmethod/VoiceView;->performLongClick()Z

    :cond_0
    return-void
.end method
