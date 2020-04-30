iris_num1 <- NULL ## for 문을 이용해 iris data 숫자만 추출
for(i in 1:ncol(iris)){ if(is.numeric(iris[, i])) iris_num1 <- cbind(iris_num1, iris[, i]) }
iris_num1 <- data.frame(iris_num1) 

iris_num2 <- iris[, sapply(iris, is.numeric)] ## sapply 문을 이용해 iris data 숫자만 추출

names(iris_num1) <- names(iris_num2) ## data 이름이 달라서 같게 지정

all.equal(iris_num1,iris_num2) ## 두 구문으로 나온 data 같은지 확인


start_time <- Sys.time() ## for 문에 대한 시간확인
iris_num1 <- NULL
for(i in 1:ncol(iris)){ if(is.numeric(iris[, i])) iris_num1 <- cbind(iris_num1, iris[, i]) }
iris_num1 <- data.frame(iris_num1) 
end_time <- Sys.time()
elapsed_time <- as.numeric(difftime(time1 = end_time,
                                    time2 = start_time,
                                    units = "secs"))
cat("elapsed time : ",sprintf("%.3f",elapsed_time),"sec",sep="")


start_time <- Sys.time() ## sapply 문에 대한 시간확인
iris_num2 <- iris[, sapply(iris, is.numeric)]
end_time <- Sys.time()
elapsed_time <- as.numeric(difftime(time1 = end_time,
                                    time2 = start_time,
                                    units = "secs"))
cat("elapsed time : ",sprintf("%.3f",elapsed_time),"sec",sep="")

