.class Lcom/meizu/widget/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/DragSortListView;)V
    .locals 4
    .param p1, "this$0"    # Lcom/meizu/widget/DragSortListView;

    .prologue
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iput v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumInBuffer:I

    iput v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumFlushes:I

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "dslv_state.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "mobeta"

    const-string v3, "Could not create dslv_state.txt"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    iget-boolean v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getChildCount()I

    move-result v0

    .local v0, "children":I
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "first":I
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get5(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v5}, Lcom/meizu/widget/DragSortListView;->-get5(Lcom/meizu/widget/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/meizu/widget/DragSortListView;->-wrap2(Lcom/meizu/widget/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    iget-object v6, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v6}, Lcom/meizu/widget/DragSortListView;->-get5(Lcom/meizu/widget/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/meizu/widget/DragSortListView;->-wrap1(Lcom/meizu/widget/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get16(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v5}, Lcom/meizu/widget/DragSortListView;->-get16(Lcom/meizu/widget/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/meizu/widget/DragSortListView;->-wrap2(Lcom/meizu/widget/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    iget-object v6, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v6}, Lcom/meizu/widget/DragSortListView;->-get16(Lcom/meizu/widget/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/meizu/widget/DragSortListView;->-wrap1(Lcom/meizu/widget/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get17(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get8(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v5}, Lcom/meizu/widget/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v4}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get12(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v4}, Lcom/meizu/widget/DragSortListView;->-get10(Lcom/meizu/widget/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v6, v2}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/meizu/widget/DragSortListView;->-wrap3(Lcom/meizu/widget/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumInBuffer:I

    iget v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView$DragSortTracker;->flush()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumInBuffer:I

    :cond_5
    return-void
.end method

.method public flush()V
    .locals 6

    .prologue
    iget-boolean v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .local v0, "append":Z
    :try_start_0
    iget v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .local v2, "writer":Ljava/io/FileWriter;
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    iget v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mNumFlushes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView$DragSortTracker;->flush()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragSortTracker;->mTracking:Z

    :cond_0
    return-void
.end method
